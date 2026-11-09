from pathlib import Path
import subprocess
import os, shutil
p=Path(__file__).resolve().parents[1]
java=(str(Path(os.environ['JAVA_HOME'])/'bin')+'/' if os.environ.get('JAVA_HOME') else '')
sources={
'android/util/Log.java':'''package android.util; public class Log { public static int i(String t,String m){return 0;} }''',
'android/view/InputDevice.java':'''package android.view; public class InputDevice { public int v,p; public InputDevice(int v,int p){this.v=v;this.p=p;} public int getVendorId(){return v;} public int getProductId(){return p;} }''',
'android/view/KeyEvent.java':'''package android.view; public class KeyEvent { public static final int KEYCODE_DPAD_UP=19,KEYCODE_DPAD_DOWN=20,ACTION_DOWN=0,ACTION_UP=1; public InputDevice device; public int key,action,repeat,id; public long time; public KeyEvent(int k,int a,int r,int id,long t,int product){key=k;action=a;repeat=r;this.id=id;time=t;device=new InputDevice(0x2717,product);} public InputDevice getDevice(){return device;} public int getKeyCode(){return key;} public int getAction(){return action;} public int getRepeatCount(){return repeat;} public int getDeviceId(){return id;} public long getDownTime(){return time;} }''',
'android/view/accessibility/AccessibilityNodeInfo.java':'''package android.view.accessibility; import java.util.*; public class AccessibilityNodeInfo { public static final int FOCUS_INPUT=1,ACTION_SET_TEXT=2097152; public boolean editable,focused,visible=true,enabled=true; public String cls="android.view.View"; public int actions; public AccessibilityNodeInfo parent,focus; public List<AccessibilityNodeInfo> children=new ArrayList<>(); public boolean isVisibleToUser(){return visible;} public boolean isEnabled(){return enabled;} public boolean isEditable(){return editable;} public boolean isFocused(){return focused;} public CharSequence getClassName(){return cls;} public int getActions(){return actions;} public AccessibilityNodeInfo getParent(){return parent;} public AccessibilityNodeInfo findFocus(int f){return focus;} public int getChildCount(){return children.size();} public AccessibilityNodeInfo getChild(int i){return children.get(i);} public static AccessibilityNodeInfo obtain(AccessibilityNodeInfo n){return n;} public void recycle(){} }''',
'android/view/accessibility/AccessibilityWindowInfo.java':'''package android.view.accessibility; import android.graphics.Rect; public class AccessibilityWindowInfo { public static final int TYPE_INPUT_METHOD=2; public int type; public Rect bounds=new Rect(); public int getType(){return type;} public void getBoundsInScreen(Rect r){r.left=bounds.left;r.top=bounds.top;r.right=bounds.right;r.bottom=bounds.bottom;} public void recycle(){} }''',
'android/accessibilityservice/AccessibilityService.java':'''package android.accessibilityservice; import android.view.accessibility.*; import java.util.*; public class AccessibilityService {public AccessibilityNodeInfo root; public List<AccessibilityWindowInfo> windows=new ArrayList<>(); public AccessibilityNodeInfo getRootInActiveWindow(){return root;} public List<AccessibilityWindowInfo> getWindows(){return windows;} }''',
'FocusTest.java':'''import android.view.*; import android.view.accessibility.*; import android.accessibilityservice.*; import local.voicebridge.InputPassthrough;
public class FocusTest {
 static int checks; static AccessibilityService s=new AccessibilityService();
 static KeyEvent e(int k,int a,int r,int id,long t,int p){return new KeyEvent(k,a,r,id,t,p);}
 static void check(int expected,KeyEvent e){int actual=InputPassthrough.route(s,e);if(expected!=actual)throw new AssertionError("check "+checks+" expected "+expected+" actual "+actual);checks++;}
 static AccessibilityNodeInfo field(){AccessibilityNodeInfo n=new AccessibilityNodeInfo();n.editable=true;n.focused=true;return n;}
 public static void main(String[] a){
 s.root=new AccessibilityNodeInfo();s.root.focus=field();
 check(0,e(19,0,0,65,100,0x32b8));s.root.focus=null;
 check(0,e(19,0,1,65,100,0x32b8)); check(0,e(19,0,0,65,100,0x32b8));check(0,e(19,1,0,65,100,0x32b8));
 check(-1,e(19,0,0,65,200,0x32b8));s.root.focus=field();check(-1,e(19,0,1,65,200,0x32b8));check(-1,e(19,1,0,65,200,0x32b8));
 check(0,e(19,0,0,65,300,0x32b8));check(0,e(19,1,0,65,300,0x32b8));check(0,e(19,0,0,65,301,0x32b8));check(0,e(19,1,0,65,300,0x32b8));check(0,e(19,0,1,65,301,0x32b8));check(0,e(19,1,0,65,301,0x32b8));
 check(-1,e(19,0,1,65,400,0x32b8));check(-1,e(19,1,0,65,400,0x32b8));
 check(-1,e(19,0,0,64,500,0x32b9));check(-1,e(21,0,0,65,500,0x32b8));check(-1,e(22,0,0,65,500,0x32b8));check(-1,e(23,0,0,65,500,0x32b8));
 check(0,e(20,0,0,65,600,0x32b8));check(0,e(19,0,0,66,600,0x32b8));InputPassthrough.removeDevice(65);check(-1,e(20,0,1,65,600,0x32b8));check(0,e(19,1,0,66,600,0x32b8));InputPassthrough.clear();
 s.root.focus=new AccessibilityNodeInfo();s.root.focus.cls="android.widget.EditText";check(0,e(20,0,0,65,700,0x32b8));InputPassthrough.clear();s.root.focus=new AccessibilityNodeInfo();s.root.focus.actions=AccessibilityNodeInfo.ACTION_SET_TEXT;check(0,e(20,0,0,65,701,0x32b8));InputPassthrough.clear();s.root.focus=null;s.root.children.add(field());check(0,e(20,0,0,65,702,0x32b8));InputPassthrough.clear();s.root.children.clear();s.root.focus=new AccessibilityNodeInfo();s.root.focus.parent=field();check(0,e(20,0,0,65,703,0x32b8));InputPassthrough.clear();
 s.root.focus=field();s.root.focus.visible=false;check(-1,e(20,0,0,65,704,0x32b8));InputPassthrough.clear();s.root.focus=null;check(-1,e(20,0,0,65,705,0x32b8));InputPassthrough.clear();s.root=null;check(-1,e(20,0,0,65,706,0x32b8));
 System.out.println("PASS: "+checks+" production Java routing assertions; Android framework mocked");
 }
}'''}
sources['android/util/Log.java']=sources['android/util/Log.java'].replace('public static int i(', 'public static int w(String t,String m){return 0;} public static int i(')
sources['android/view/accessibility/AccessibilityNodeInfo.java']=sources['android/view/accessibility/AccessibilityNodeInfo.java'].replace('FOCUS_INPUT=1,','ACTION_FOCUS=1,FOCUS_INPUT=1,').replace('public void recycle(){}','public AccessibilityNodeInfo target; public boolean success=true; public static int moves; public AccessibilityNodeInfo focusSearch(int d){return target;} public boolean performAction(int a){moves++;return success;} public void recycle(){}')
sources['FocusTest.java']=sources['FocusTest.java'].replace('System.out.println("PASS:', '''InputPassthrough.clear();s.root=new AccessibilityNodeInfo();s.root.focus=field();AccessibilityNodeInfo t=new AccessibilityNodeInfo();s.root.focus.target=t;int before=AccessibilityNodeInfo.moves;
 check(1,e(20,0,0,65,800,0x32b8));s.root.focus=null;check(1,e(20,0,1,65,800,0x32b8));check(1,e(20,0,0,65,800,0x32b8));check(1,e(20,1,0,65,800,0x32b8));if(AccessibilityNodeInfo.moves!=before+1)throw new AssertionError("duplicate focus action");checks++;
 s.root.focus=field();s.root.focus.target=t;t.success=false;check(0,e(20,0,0,65,801,0x32b8));check(0,e(20,1,0,65,801,0x32b8));t.visible=false;check(0,e(20,0,0,65,802,0x32b8));
 System.out.println("PASS:''')
sources['android/graphics/Rect.java']='''package android.graphics; public class Rect { public int left,top,right,bottom; public boolean isEmpty(){return right<=left||bottom<=top;} public int centerX(){return (left+right)/2;} }'''
sources['android/view/accessibility/AccessibilityNodeInfo.java']=sources['android/view/accessibility/AccessibilityNodeInfo.java'].replace('public void recycle(){}','''public String pkg="other"; public boolean focusable=true; public int l,t,r,b; public int ownMoves; public boolean isFocusable(){return focusable;} public CharSequence getPackageName(){return pkg;} public void getBoundsInScreen(android.graphics.Rect x){x.left=l;x.top=t;x.right=r;x.bottom=b;} public void recycle(){}''').replace('moves++;return success;', 'moves++;ownMoves++;return success;')
sources['FocusTest.java']=sources['FocusTest.java'].replace('System.out.println("PASS:', '''
 InputPassthrough.clear();s.root=new AccessibilityNodeInfo();AccessibilityNodeInfo src=field();src.pkg="com.caij.puremusic";src.l=40;src.t=136;src.r=1880;src.b=256;s.root.focus=src;s.root.children.add(src);
 AccessibilityNodeInfo username=new AccessibilityNodeInfo();username.pkg=src.pkg;username.l=40;username.t=288;username.r=1880;username.b=408;
 AccessibilityNodeInfo password=new AccessibilityNodeInfo();password.pkg=src.pkg;password.l=40;password.t=440;password.r=1880;password.b=560;
 s.root.children.add(password);s.root.children.add(username);
 check(1,e(20,0,0,65,900,0x32b8));if(username.ownMoves!=1||password.ownMoves!=0)throw new AssertionError("wrong geometry target");checks++;
 check(1,e(20,0,1,65,900,0x32b8));check(1,e(20,1,0,65,900,0x32b8));if(username.ownMoves!=1)throw new AssertionError("repeat moved");checks++;
 username.enabled=false;check(1,e(20,0,0,65,901,0x32b8));if(password.ownMoves!=1)throw new AssertionError("disabled target");checks++;
 password.pkg="unrelated";check(0,e(20,0,0,65,902,0x32b8));
 username.enabled=true;username.l=1900;username.r=1920;check(0,e(20,0,0,65,903,0x32b8));
 username.l=40;username.r=1880;src.pkg="other";check(0,e(20,0,0,65,904,0x32b8));
 src.pkg="com.caij.puremusic";check(0,e(19,0,0,65,905,0x32b8));
 src.focused=false;username.focused=true;username.editable=true;username.pkg=src.pkg;s.root.focus=username;check(1,e(19,0,0,65,906,0x32b8));if(src.ownMoves!=1)throw new AssertionError("up target");checks++;
 System.out.println("PASS:''')
sources['android/view/accessibility/AccessibilityNodeInfo.java']=sources['android/view/accessibility/AccessibilityNodeInfo.java'].replace('public void recycle(){}','public int window=1; public int getWindowId(){return window;} public void recycle(){}')
sources['FocusTest.java']=sources['FocusTest.java'].replace('System.out.println("PASS:', '''
 InputPassthrough.clear();src.focused=true;username.focused=false;username.editable=false;s.root.focus=src;src.pkg="com.overdevs.at4k";username.pkg=src.pkg;src.l=440;src.t=241;src.r=1480;src.b=337;username.l=408;username.t=376;username.r=1512;username.b=493;
 int prior=username.ownMoves;check(1,e(20,0,0,65,1000,0x32b8));if(username.ownMoves!=prior+1)throw new AssertionError("AT4K result target");checks++;
 check(1,e(20,1,0,65,1000,0x32b8));username.window=2;check(0,e(20,0,0,65,1001,0x32b8));username.window=1;
 username.visible=false;check(0,e(20,0,0,65,1002,0x32b8));username.visible=true;username.focusable=false;check(0,e(20,0,0,65,1003,0x32b8));username.focusable=true;
 username.success=false;check(0,e(20,0,0,65,1004,0x32b8));username.success=true;
 src.pkg="third.application";username.pkg=src.pkg;check(1,e(20,0,0,65,1005,0x32b8));
 System.out.println("PASS:''')
sources['FocusTest.java']=sources['FocusTest.java'].replace('System.out.println("PASS:', '''
 InputPassthrough.clear();AccessibilityWindowInfo ime=new AccessibilityWindowInfo();ime.type=2;ime.bounds.top=636;ime.bounds.right=1920;ime.bounds.bottom=1080;s.windows.add(ime);src.target=username;int countBefore=AccessibilityNodeInfo.moves;
 check(0,e(20,0,0,65,1100,0x32b8));check(0,e(20,0,1,65,1100,0x32b8));s.windows.clear();check(0,e(20,0,0,65,1100,0x32b8));check(0,e(20,1,0,65,1100,0x32b8));if(AccessibilityNodeInfo.moves!=countBefore)throw new AssertionError("IME focus stolen");checks++;
 check(1,e(20,0,0,65,1101,0x32b8));check(1,e(20,1,0,65,1101,0x32b8));
 s.windows.add(ime);s.root=null;check(0,e(19,0,0,65,1102,0x32b8));check(0,e(19,1,0,65,1102,0x32b8));check(-1,e(20,0,0,65,1103,0x32b9));check(-1,e(21,0,0,65,1103,0x32b8));
 s.windows=null;check(0,e(20,0,0,65,1104,0x32b8));s.windows=new java.util.ArrayList<>();
 System.out.println("PASS:''')
for name,content in sources.items():
 f=p/'test-src'/name; f.parent.mkdir(parents=True,exist_ok=True);f.write_text(content)
classes=p/'test-classes';classes.mkdir(exist_ok=True)
subprocess.run([java+'javac','-source','8','-target','8','-d',str(classes),str(p/'src/local/voicebridge/InputPassthrough.java')]+[str(p/'test-src'/name) for name in sources],check=True)
subprocess.run([java+'java','-cp',str(classes),'FocusTest'],check=True)
