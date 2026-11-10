"""Host-side invariants for the archived VoiceBridge Smali navigation path."""

import re
import hashlib
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "apk/smali/local/voicebridge/VoiceBridgeService.smali"
SMALI = SOURCE.read_text()


def method(name):
    match = re.search(
        r"(?m)^\.method [^\n]*\b" + re.escape(name) + r"\([^\n]*\n.*?^\.end method",
        SMALI,
        re.S,
    )
    if match is None:
        raise AssertionError(f"missing method: {name}")
    return match.group()


def run_observation_gate(enabled, active, last_voice, now):
    """Execute the production predicate's Smali subset; no reimplemented policy."""
    lines = [line.strip() for line in method("shouldObserveWindows").splitlines()
             if line.strip() and not line.strip().startswith((".", "#"))]
    labels = {line: i for i, line in enumerate(lines) if line.startswith(":")}
    fields = {"voiceEnabled": enabled, "observationActive": active,
              "lastKatnissEventMs": last_voice}
    registers = {}
    pc = 0
    while pc < len(lines):
        line = lines[pc]
        pc += 1
        if line.startswith(":"):
            continue
        op, args = line.split(" ", 1)
        args = args.split(", ")
        if op.startswith("iget"):
            registers[args[0]] = fields[args[2].split("->")[1].split(":")[0]]
        elif op.startswith("const"):
            registers[args[0]] = int(args[1], 16)
        elif op == "invoke-static":
            assert "Ljava/lang/System;->currentTimeMillis()J" in line
        elif op == "move-result-wide":
            registers[args[0]] = now
        elif op == "sub-long/2addr":
            registers[args[0]] -= registers[args[1]]
        elif op == "cmp-long":
            left, right = registers[args[1]], registers[args[2]]
            registers[args[0]] = (left > right) - (left < right)
        elif op.startswith("if-"):
            value = registers[args[0]]
            take = {"if-eqz": value == 0, "if-nez": value != 0,
                    "if-lez": value <= 0, "if-ltz": value < 0,
                    "if-gtz": value > 0}[op]
            if take:
                pc = labels[args[1]]
        elif op == "return":
            return registers[args[0]]
        else:
            raise AssertionError(f"unsupported production instruction: {line}")
    raise AssertionError("predicate did not return")


class NavigationChecks(unittest.TestCase):
    def test_voice_gate_boundaries_execute_production_instructions(self):
        for enabled, active, last_voice, now, expected in (
            (False, False, 0, 100000, 0),
            (False, True, 99999, 100000, 0),
            (True, False, 0, 100000, 0),
            (True, False, 0, 100, 0),
            (True, False, 88000, 100000, 1),
            (True, False, 87999, 100000, 0),
            (True, False, 100000, 100000, 1),
            (True, False, 100001, 100000, 0),
            (True, True, 0, 100000, 1),
        ):
            with self.subTest(enabled=enabled, active=active, last_voice=last_voice, now=now):
                self.assertEqual(expected, run_observation_gate(enabled, active, last_voice, now))

    def test_key_filter_preserved_exactly(self):
        baseline_sha256 = {
            "onKeyEvent": "7cddb6386000e29d6b101fad9e895f32d95e2369fb87ea065b380a5ccda8ac24",
            "handleNewRemoteKey": "27e2b33cd33679079675dd4163c940ab011a5ae15282995bf3686298ae6fbe61",
            "handleLegacyRemoteKey": "884b22595b4d32b662528efac2084603216bc9d43e2ae334e7e406471a4b0dfd",
        }
        for name, digest in baseline_sha256.items():
            self.assertEqual(digest, hashlib.sha256(method(name).encode()).hexdigest())
        self.assertIn("const/16 v2, 0x32b9", method("onKeyEvent"))
        self.assertIn("return v0", method("onKeyEvent"))

    def test_idle_paths_never_read_window_trees(self):
        for name, first_tree_access in (
            ("scanForegroundWindow", "->getWindows()"),
            ("inspectPlayStoreWindow", "->getRootInActiveWindow()"),
        ):
            body = method(name)
            self.assertLess(body.index("->shouldObserveWindows()"), body.index(first_tree_access))
            self.assertIn("return-void" if name != "voicePlatePresent" else "return v0", body[:body.index(first_tree_access)])

        predicate = method("shouldObserveWindows")
        for required in ("->voiceEnabled:Z", "->observationActive:Z", "->lastKatnissEventMs:J", "0x2ee0", "cmp-long"):
            self.assertIn(required, predicate)
        self.assertLess(predicate.index("->observationActive:Z"), predicate.index("->lastKatnissEventMs:J"))
        self.assertIn("if-lez v2, :no_voice_observation", predicate)

    def test_events_keep_voice_triggers_before_idle_return(self):
        body = method("onAccessibilityEvent")
        cutoff = body.index("    :event_voice_active\n")
        self.assertIn("->trackForegroundPackage(", body[:cutoff])
        self.assertIn("->voicePlatePresent()", body[:cutoff])
        self.assertIn("->ensureVoicePlateObservation(", body[:cutoff])
        self.assertIn("return-void", body[body.index("    :cond_c\n"):cutoff])
        for access in ("->maybeDumpWindows(", "->getSource()", "->collectNodeTexts("):
            self.assertGreater(body.index(access), cutoff)

    def test_diagnostics_are_opt_in_during_observation(self):
        body = method("maybeDumpWindows")
        self.assertLess(body.index("->debugTree:Z"), body.index("->observationActive:Z"))
        self.assertLess(body.index("->observationActive:Z"), body.index("->dumpWindows("))


if __name__ == "__main__":
    unittest.main()