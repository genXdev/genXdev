# Show-WebsiteInAllBrowsers

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-WebsiteInAllBrowsers -Url <String> [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The URLs to open in all browsers simultaneously |
| `-Monitor` | Int32 | — | — | Named | `-1` | 要使用的显示器，0=默认，-1=丢弃，-2=配置的辅助显示器，默认为$Global:DefaultSecondaryMonitor，如果未找到则为2 |
| `-Width` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-AcceptLang` | String | — | — | Named | — | 设置浏览器接受语言 HTTP 头 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 在全屏模式下打开 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，必要时停止现有浏览器 |
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
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重用现有浏览器窗口，而是创建一个新窗口。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送按键时转义控制字符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 发送键后阻止键盘焦点返回 PowerShell |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送不同键序列之间的延迟（毫秒） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除浏览器窗口的边框。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口定位到与PowerShell不同的显示器上全屏显示，或者与PowerShell在同一显示器上并排显示。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 使用存储在会话中的替代设置进行AI偏好设置。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除会话中存储的AI偏好替代设置。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. |

## Related Links

- [Show-WebsiteInAllBrowsers on GitHub](https://github.com/genXdev/genXdev)
