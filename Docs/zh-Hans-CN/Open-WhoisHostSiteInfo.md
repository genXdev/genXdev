# Open-WhoisHostSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `whois

## Synopsis

> 在网页浏览器中打开 Whois 主机信息查询。

## Description

在网页浏览器中打开域名或IP地址的Whois主机信息查询。支持可配置的监视器选择、多次查询，以及广泛的浏览器配置选项，包括窗口定位、浏览器选择和自动化功能。

## Syntax

```powershell
Open-WhoisHostSiteInfo -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要执行的查询。 |
| `-Language` | String | — | — | 2 | — | 返回搜索结果的語言 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，必要时停止现有浏览器 |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌浏览器中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，在 Microsoft Edge 或 Google Chrome 中打开 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的浏览器而非操作系统安装的浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 打开由 Playwright 管理的 WebKit 浏览器。隐含 -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | 在无可见窗口的情况下运行浏览器 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有注册的现代浏览器中打开 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 要使用的显示器，0 = 默认，-1 = 丢弃，-2 = 配置的辅助显示器，默认为 -1，无定位 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 在全屏模式下打开 |
| `-Width` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕中央 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重用现有浏览器窗口，而是创建一个新窗口。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回浏览器进程的 [System.Diagnostics.Process] 对象 |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送按键时转义控制字符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 发送键后阻止键盘焦点返回 PowerShell |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送不同键序列之间的延迟（毫秒） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除浏览器窗口的边框。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除会话中存储的AI偏好设置（如语言、图像集等）的备选方案。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化首选项中，而不影响会话中的AI偏好（如语言、图像收藏等）。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口定位到与PowerShell不同的显示器上全屏显示，或者与PowerShell在同一显示器上并排显示。 |

## Examples

### Open-WhoisHostSiteInfo -Queries "example.com", "example.org" -Monitor 0

```powershell
Open-WhoisHostSiteInfo -Queries "example.com", "example.org" -Monitor 0
```

在默认监视器上打开多个域名的 Whois 信息。

### whois example.com -m 1

```powershell
whois example.com -m 1
```

whois example.com

### "microsoft.com", "google.com" | Open-WhoisHostSiteInfo -Private -Chrome

```powershell
"microsoft.com", "google.com" | Open-WhoisHostSiteInfo -Private -Chrome
```

在Chrome隐私模式下，从管道中打开域名的Whois信息。

## Related Links

- [Open-WhoisHostSiteInfo on GitHub](https://github.com/genXdev/genXdev)
