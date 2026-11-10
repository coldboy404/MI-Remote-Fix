# MI Remote Fix / 遥控助手

针对小米盒子两只遥控器的独立按键处理及输入框导航修复。当前归档版本 **5.9-ime-safe**（versionCode **24**），包名 `local.voicebridge`。

## 5.10 导航候选版

当前源码构建 `5.10-navigation-candidate`（versionCode 25）。减少导航时同步无障碍窗口扫描和全树日志，保留原装遥控器放行、方向键处理和输入法路由。语音窗口扫描仅在已触发语音观察或近期收到 Katniss 事件时执行。

本地通过 71 项路由断言、5 组导航检查及完整 APK 组装。尚未安装验收，不能视为商店乱跳已解决；商店语音回传仍未修复。Google TV Remote Service 已有 ATVV 通道，下一步应检查实体语音按压的音频帧与原生会话，不能由屏幕麦克风使用内置录音的日志推断整个蓝牙音频通道失效。

## 下载

[遥控助手 5.9 APK](releases/remote-assistant-5.9.apk)

SHA-256：`cb965ea78cd1e263fee1f8888daff13f198eb4d515aaeb4f1e84179d9deb6c26`

本 APK 是实际安装验证的归档产物。重新构建的 APK 因工具时间戳等因素不保证逐字节一致，但使用同一签名可覆盖升级。

## 已实现

- 原装 Xiaomi RC（VID/PID `2717:32b9`）完全放行，不再被助手拦截方向键。
- 小米蓝牙语音遥控器（`2717:32b8`）保留独立连发逻辑。
- 输入框上下导航优先使用系统焦点搜索，失败时在同一窗口、同一应用内寻找可见且可聚焦的上下目标。
- 软键盘显示时不强行移动表单焦点，上下键整次按压交还系统。
- 重复事件和松开事件沿用同一按压的路由，避免重复移焦。
- 原有功能及包身份保留。谷歌商店内语音桥接仍有未解决问题，不属于本次修复完成项。

实测设备为 Android 14 小米盒子；用户对 5.9 的反馈为“差不多了”。这不是所有 TV、输入法和页面均已通过测试的保证。71 项主机断言验证路由代码，不能代替实体遥控器测试。32b8 实际原有连发为310ms首次/170ms间隔，界面500/160参数对应另一旧分支，勿混淆。

## 源码结构

- `apk/`：完整可重建的最终 APK Smali、资源与 Manifest。原始项目源码不可得，不应将此称作原始 Gradle 项目。
- `src/local/voicebridge/InputPassthrough.java`：本轮新增/修复的 Java 源码。
- `checks/test_focus.py`：使用 Android 测试替身执行真实 Java 路由逻辑。
- `scripts/build.py`：Java→DEX→Smali→APK→同签名构建脚本。
- `releases/`：已在设备上验证身份的 APK。
- `signing/release.jks.enc`：加密签名 keystore；alias 为 `voicebridge`。
- `tools/`：归档实际使用的工具链，避免构建依赖漂移；校验见 `tools/SHA256SUMS`。

## 本地构建

需要 Python 3.9+、JDK17、OpenSSL，推荐 Linux。设置 `JAVA_HOME` 或确保 `java`、`javac` 在 PATH：

```sh
python3 checks/test_focus.py
python3 scripts/build.py
```

未设置密码时只生成 `build/remote-assistant-unsigned.apk`。
签名构建请在本地安全终端设置 `SIGNING_PASSWORD` 后运行同一脚本；不要把密码写进 Git、命令记录或 issue。脚本用它解密 keystore，并以相同密码解锁 keystore/key。解密临时文件在签名结束后删除。

签名证书 SHA-256：`bb89c29c3443fbb61439d44f4bbfd2fd17062e301803c1a49efb67ca96d5dd71`。

## GitHub Actions

仓库 Actions Secret `SIGNING_PASSWORD` 供手动构建使用。密码不进入 Git 历史。push/PR 只跑测试和无签名构建；仓库所有者手动运行工作流可生成同签名 APK Artifact。未持有密码者不能使用归档密钥签发更新。

## 注意

不要为绕过签名不一致而卸载已有遥控助手，卸载会丢失设置和无障碍状态。不要卸载其他遥控、电源或输入法辅助应用。本仓库不包含个人设备日志、账户信息、明文密码或语音录音。

第三方工具与原 APK 的原有版权归各自权利人；本仓库是个人设备修复归档，不宣称拥有第三方组件版权。工具来源见 `tools/README.md`。
