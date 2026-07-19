# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline

## Synopsis

> 打开交互式时间线，显示当前时间、日期、世纪和千年。

## Description

打开一个基于网页的交互式时间线。支持多种语言和可视化自定义选项。

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
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
| `-Monitor` | Int32 | — | — | Named | `-2` | 要使用的显示器，0 = 默认，-1 = 丢弃，-2 = 配置的辅助显示器，默认为全局：DefaultSecondaryMonitor 或 2（如果未找到） |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 请勿在全屏模式下打开 |
| `-Width` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕中央 |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | 显示浏览器控件 |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | 不要让浏览器扩展加载 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重用现有浏览器窗口，而是创建一个新窗口。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回浏览器进程的 [System.Diagnostics.Process] 对象 |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | 不要开始新游戏，只观看AI游玩 |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-Language` | String | — | — | 1 | — | 覆盖默认浏览器语言，或选择[全部]以每分钟轮换所有语言 |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | 覆盖用于绘制当前拖拽节点背景的css-color-style |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (In center) background |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (in center) foreground text |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (In center) background |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | .unfocused-node.center .foreground-text { color: [your-color]; } |
| `-BorderLightColor` | String | — | — | Named | `$null` | Overwrite the default css border-light-color colorstyle |
| `-BorderDarkColor` | String | — | — | Named | `$null` | Overwrite the default css border-dark-color colorstyle |
| `-BorderWidth` | Int32 | — | — | Named | `1` | 覆盖绘制节点边框的默认宽度 |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | 覆盖背景旋转延迟的默认宽度 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 在全屏模式下打开 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送按键时转义控制字符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 发送键后阻止键盘焦点返回 PowerShell |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送不同键序列之间的延迟（毫秒） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除浏览器窗口的边框。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口定位到与PowerShell不同的显示器上全屏显示，或者与PowerShell在同一显示器上并排显示。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

打开一个受梵高启发的时间轴互动展示（英语）。

### timeline -mon 2

```powershell
timeline -mon 2
```

使用别名在显示器 2 上打开时间线。

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

在Chrome无痕模式下全屏打开时间线。

## Related Links

- [Open-Timeline on GitHub](https://github.com/genXdev/genXdev)
