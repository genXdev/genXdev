# Open-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wb

## Synopsis

> 在一个或多个浏览器窗口中打开URL，可设置位置和样式。

## Description

该函数为浏览器启动提供了一个高级封装，支持窗口定位、浏览器选择和行为的广泛自定义。它支持包括Edge、Chrome和Firefox在内的多种浏览器，具备隐私浏览、应用模式以及精确窗口管理等功能。

主要特性：
- 智能浏览器检测与选择
- 窗口定位（左、右、上、下、居中、全屏）
- 多显示器支持（自动或手动选择显示器）
- 隐私/无痕浏览模式支持
- 应用模式（免打扰浏览）
- 扩展和弹窗拦截选项
- 焦点管理与窗口操作
- 跨浏览器批量打开URL
- 向浏览器窗口发送按键自动化

该函数能自动检测系统能力并相应调整行为。对于系统中未安装的浏览器，操作会被静默跳过而不报错。

## Syntax

```powershell
Open-Webbrowser [[-Url] <String[]>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-Input <String>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String[] | — | — | 0 | — | 要在浏览器中打开的URL |
| `-Input` | String | — | ✅ (ByValue, ByPropertyName) | Named | — | 要在浏览器中打开的URL |
| `-Monitor` | Int32 | — | — | 1 | `-2` | 要使用的显示器，0=默认，-1=丢弃，-2=配置的辅助显示器，默认为$Global:DefaultSecondaryMonitor，如果未找到则为2 |
| `-Width` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |
| `-Force` | SwitchParameter | — | — | Named | — | 在打开新浏览器实例前，强制关闭现有实例 |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌浏览器中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，在 Microsoft Edge 或 Google Chrome 中打开 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有注册的现代浏览器中打开 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕中央 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 在全屏模式下打开 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重用现有浏览器窗口，而是创建一个新窗口。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回浏览器进程的 PowerShell 对象 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在与 PowerShell 不同的显示器上全屏，或与 PowerShell 在同一显示器上并排显示 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到窗口的按键操作，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键时，保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的浏览器而非操作系统安装的浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 打开由 Playwright 管理的 WebKit 浏览器。隐含 -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | 在无可见窗口的情况下运行浏览器 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意第三方软件安装（Playwright 浏览器） |

## Examples

### wb -PlayWright https://github.com

```powershell
wb -PlayWright https://github.com
```

在 Playwright 管理的 Chromium 浏览器中打开 GitHub。

### Open-Webbrowser -Url "https://github.com"

```powershell
Open-Webbrowser -Url "https://github.com"
```

在默认浏览器中打开 GitHub。

### Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left

```powershell
Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left
```

在显示器1的左半部分打开Stack Overflow。

### wb "https://google.com" -m 0 -fs

```powershell
wb "https://google.com" -m 0 -fs
```

主要显示器上以全屏模式使用别名打开谷歌。

### Open-Webbrowser -Chrome -Private -NewWindow

```powershell
Open-Webbrowser -Chrome -Private -NewWindow
```

以无痕模式打开一个新的 Chrome 窗口。

### "https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All

```powershell
"https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All
```

通过管道在所有已安装的浏览器中打开多个URL。

### Open-Webbrowser -Monitor 0 -Right

```powershell
Open-Webbrowser -Monitor 0 -Right
```

将已打开的浏览器窗口重新定位到主显示器的右侧。

### Open-Webbrowser -ApplicationMode -Url "https://app.example.com"

```powershell
Open-Webbrowser -ApplicationMode -Url "https://app.example.com"
```

以无浏览器控件的应用模式打开 Web 应用程序。

## Related Links

- [Open-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
