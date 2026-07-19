# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> 启动一个由 Playwright 管理的浏览器，并带有持久化用户配置文件。

## Description

<details>
<summary><b>Expand description</b></summary>

启动一个独立的浏览器实例，由 Playwright 内置的 Chromium、Firefox 或 WebKit 二进制文件驱动——完全独立于操作系统安装的任何浏览器。该浏览器使用存储在 GenXdev AppData 下的持久用户配置文件，因此 cookie、localStorage 和会话在重启后仍然保留。

此 cmdlet 替代了旧的 CDP/调试端口方法，该方法在 Chrome 136+ 中已失效。不再通过调试端口附加到系统浏览器，Playwright 直接管理自己的浏览器生命周期。

主要特点：
- 每种浏览器类型（Chromium、Firefox、WebKit）的持久配置文件
- 可配置的视口大小和窗口位置
- 用于自动化的无头模式
- 代理服务器支持
- 自定义 Accept-Language 头
- 隐身/私有上下文选项
- 浏览器扩展控制
- 通过 -Width、-Height、-Left、-Right 等参数调整视口大小和位置
- 强制重启以关闭现有实例并重新开始

启动的浏览器及其上下文/页面存储在 $Global:GenXdevPlaywright 中，供其他 cmdlet 使用。

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | 要启动的浏览器引擎：Chromium、Firefox 或 WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | 在无可见窗口的情况下运行浏览器 |
| `-Proxy` | String | — | — | Named | — | 代理服务器URL（例如 http://proxy:8080） |
| `-AcceptLang` | String | — | — | Named | — | 设置浏览器 Accept-Language HTTP 标头 |
| `-Width` | Int32 | — | — | Named | `-1` | 初始视口宽度（像素） |
| `-Height` | Int32 | — | — | Named | `-1` | 初始视口高度（像素） |
| `-Force` | SwitchParameter | — | — | Named | — | 关闭现有浏览器并重新启动 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 强制重新提示安装许可对话框 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意第三方软件安装（Playwright 浏览器） |
| `-Monitor` | Int32 | — | — | Named | `-1` | 要使用的显示器，0=默认，-1=丢弃，-2=配置的辅助显示器，默认为$Global:DefaultSecondaryMonitor，如果未找到则为2 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕中央 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 将窗口最大化以充满整个屏幕 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在与 PowerShell 不同的显示器上全屏，或与 PowerShell 在同一显示器上并排显示 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Minimize` | SwitchParameter | — | — | Named | — | 定位后最小化窗口 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到窗口的按键操作，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键时，保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回窗口助手对象以便进一步操作 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
