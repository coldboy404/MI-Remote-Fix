from pathlib import Path
import os, subprocess, shutil, re, hashlib
p=Path(__file__).resolve().parents[1]
tools=p/'tools'
java=str(Path(os.environ['JAVA_HOME'])/'bin/java') if os.environ.get('JAVA_HOME') else 'java'
javac=str(Path(os.environ['JAVA_HOME'])/'bin/javac') if os.environ.get('JAVA_HOME') else 'javac'
def run(args, **kw): subprocess.run([str(a) for a in args],check=True,**kw)
for line in (tools/'SHA256SUMS').read_text().splitlines():
 digest,name=line.split('  ',1)
 assert hashlib.sha256((tools/name).read_bytes()).hexdigest()==digest,name
build=p/'build'
if build.exists(): shutil.rmtree(build)
build.mkdir()
run([javac,'-source','8','-target','8','-bootclasspath',tools/'android-34.jar','-d',build/'classes',p/'src/local/voicebridge/InputPassthrough.java'])
run([java,'-cp',tools/'dex2jar-lib/dx-30.0.2.jar','com.android.dx.command.Main','--dex','--output='+str(build/'helper.dex'),build/'classes'])
run([java,'-cp',str(tools/'dex2jar-lib/*'),'com.googlecode.d2j.smali.BaksmaliCmd','-o',build/'helper-smali',build/'helper.dex'])
tree=build/'apk'
shutil.copytree(p/'apk',tree)
for f in (build/'helper-smali/local/voicebridge').glob('InputPassthrough*.smali'):
 s=re.sub(r'const/high16 (v\d+), (\d+)',lambda m:'const '+m[1]+', '+hex(int(m[2])<<16),f.read_text())
 (tree/'smali/local/voicebridge'/f.name).write_text(s)
run([java,'-jar',tools/'apktool.jar','b','-f',tree,'-o',build/'remote-assistant-unsigned.apk'])
if not os.environ.get('SIGNING_PASSWORD'):
 print('Unsigned APK ready. Set SIGNING_PASSWORD to decrypt the release key and sign.')
else:
 key=build/'release.jks'
 try:
  run(['openssl','enc','-d','-aes-256-cbc','-pbkdf2','-iter','200000','-in',p/'signing/release.jks.enc','-out',key,'-pass','env:SIGNING_PASSWORD'],stdout=subprocess.DEVNULL)
  key.chmod(0o600)
  password=os.environ['SIGNING_PASSWORD']
  run([java,'-jar',tools/'uber-apk-signer.jar','-a',build/'remote-assistant-unsigned.apk','--ks',key,'--ksAlias','voicebridge','--ksPass',password,'--ksKeyPass',password,'--out',build/'signed'])
 finally:
  key.unlink(missing_ok=True)
