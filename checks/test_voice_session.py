import subprocess
import tempfile
import unittest
from pathlib import Path
from test_navigation import method

ROOT = Path(__file__).resolve().parents[1]

class VoiceSessionChecks(unittest.TestCase):
    def test_production_java_policy(self):
        with tempfile.TemporaryDirectory(dir=ROOT / 'checks') as out:
            subprocess.run(['javac', '-d', out, str(ROOT/'src/local/voicebridge/VoiceSessionPolicy.java'),
                            str(ROOT/'checks/VoiceSessionTest.java')], check=True)
            subprocess.run(['java', '-cp', out, 'VoiceSessionTest'], check=True)

    def test_home_back_cancel_without_consumption(self):
        # Execute the actual added key prefix with narrow KeyEvent/service doubles.
        body = method('onKeyEvent').split('    :voice_navigation_checked')[0]
        lines = [x.strip() for x in body.splitlines()
                 if x.strip() and not x.strip().startswith(('.', '#'))]
        for action, key, expected in [(0,3,1), (0,4,1), (1,3,0), (1,4,0),
                                      (0,19,0), (0,20,0), (0,21,0), (0,22,0), (0,23,0), (0,219,0)]:
            regs, result, cancelled, pc = {}, None, 0, 0
            labels = {x: i for i,x in enumerate(lines) if x.startswith(':')}
            while pc < len(lines):
                line = lines[pc]; pc += 1
                if line.startswith(':'): continue
                if '->getAction()' in line: result = action
                elif '->getKeyCode()' in line: result = key
                elif '->cancelObservation()' in line: cancelled += 1
                elif line.startswith('move-result '): regs[line.split()[1]] = result
                elif line.startswith('const/4 '):
                    a,b = line.split(' ',1)[1].split(', '); regs[a] = int(b,16)
                elif line.startswith('if-'):
                    op,args = line.split(' ',1); args = args.split(', ')
                    take = (regs[args[0]] != 0 if op == 'if-nez' else
                            regs[args[0]] == regs[args[1]] if op == 'if-eq' else
                            regs[args[0]] != regs[args[1]])
                    if take:
                        if args[-1] == ':voice_navigation_checked': break
                        pc = labels[args[-1]]
                else: self.fail('Unsupported instruction: '+line)
            self.assertEqual(expected, cancelled, (action,key))

    def test_policy_is_wired_before_ttl_and_focus(self):
        body = method('ensureVoicePlateObservation')
        self.assertLess(body.index('->canObserve('), body.index(':katnissTTL'))
        body = method('insertTextIntoPlaySearch')
        self.assertEqual(2, body.count('->canInsert('))
        self.assertLess(body.index(':insert_root_owned'), body.index('->getWindows()'))
        body = method('cancelObservation')
        for field in ['observationFinishedMs:J', 'lastKatnissEventMs:J', 'lastAssistantEventMs:J', 'pendingText:Ljava/lang/String;']:
            self.assertIn('->' + field, body)
        self.assertEqual(3, body.count('->removeCallbacks('))
        body = method('onAccessibilityEvent')
        self.assertLess(body.index('->holdVoiceResult()Z'), body.index('->cancelObservation()V'))
        self.assertNotIn('->startActivity(', method('holdVoiceResult'))

if __name__ == '__main__': unittest.main()
