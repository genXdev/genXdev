# Open-GameOfLife

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `gameoflife`, `conway`

## Synopsis

> 在网页浏览器中打开康威生命游戏模拟。

## Description

在网页浏览器窗口中打开交互式康威生命游戏模拟，具有广泛的定位和配置选项。康威生命游戏是由数学家约翰·康威于1970年设计的一种细胞自动机，由可以处于两种状态（存活或死亡）的单元格网格组成。

此功能提供全面的浏览器控制，包括窗口定位、浏览器选择、隐私浏览和自动交互能力。模拟运行在 https://conway.genxdev.net/，支持多种交互模式。

## Syntax

```powershell
Open-GameOfLife [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | 浏览器界面和内容本地化的语言偏好 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，必要时关闭现有浏览器 |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在 Google Chrome 中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 或 Google Chrome 中打开，具体取决于默认浏览器是什么 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | 使用Playwright管理的浏览器而非操作系统安装的浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 打开 Playwright 托管的 WebKit 浏览器。隐含 -PlayWright 参数。 |
| `-Headless` | SwitchParameter | — | — | Named | — | 运行浏览器但不显示可见窗口 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有已注册的现代浏览器中打开 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 要使用的显示器，0 = 默认，-1 = 丢弃，-2 = 已配置的辅助显示器，默认值为 -1，无定位 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 以全屏模式打开 |
| `-Width` | Int32 | — | — | Named | `-1` | 网络浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网页浏览器窗口的初始 X 位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口置于屏幕中央 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 阻止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言的HTTP头 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 向浏览器窗口发送击键时转义控制字符。 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 防止在向浏览器窗口发送击键后将键盘焦点返回给 PowerShell。 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 向浏览器发送击键时，使用 Shift+Enter 代替常规 Enter 进行换行。 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送不同键序列之间的延迟（以毫秒为单位）。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开后聚焦浏览器窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置于前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复至正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 在打开浏览器后恢复 PowerShell 窗口焦点。 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重复使用现有的浏览器窗口，而是创建一个新的 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回浏览器进程的 [System.Diagnostics.Process] 对象 |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | 别打开网页浏览器，直接返回网址 |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 打开网页浏览器后，返回网址 |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 请勿在**全屏模式**下打开。 |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | 显示浏览器控件 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除浏览器窗口的边框。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将浏览器窗口定位在与 PowerShell 不同的显示器上全屏显示，或与 PowerShell 在同一显示器上并排显示。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 对浏览器配置文件使用仅会话模式（关闭时清除Cookie和数据）。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 在打开浏览器前清除会话/配置文件数据。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 跳过恢复上一个浏览器会话。 |

## Examples

### Open-GameOfLife -Monitor 1 -FullScreen

```powershell
Open-GameOfLife -Monitor 1 -FullScreen
```

在显示器1上以全屏模式打开康威生命游戏。

### Open-GameOfLife -Language "French" -Chrome -Private

```powershell
Open-GameOfLife -Language "French" -Chrome -Private
```

在Chrome浏览器的隐私模式下以法语打开《生命游戏》。

### gameoflife -m 0 -app

```powershell
gameoflife -m 0 -app
```

使用别名在主显示器上以应用程序模式打开《生命游戏》。

### conway -Edge -Left -Width 800 -Height 600

```powershell
conway -Edge -Left -Width 800 -Height 600
```

在 Microsoft Edge 中打开康威生命游戏，位于左侧，并具有特定尺寸。

## Parameter Details

### `-Language <String>`

> 浏览器界面和内容本地化的语言偏好

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> 在无痕/隐私浏览模式下打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> 强制启用调试端口，必要时关闭现有浏览器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> 在 Microsoft Edge 中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> 在 Google Chrome 中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> 在 Microsoft Edge 或 Google Chrome 中打开，具体取决于默认浏览器是什么

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> 在 Firefox 中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> 使用Playwright管理的浏览器而非操作系统安装的浏览器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> 打开 Playwright 托管的 WebKit 浏览器。隐含 -PlayWright 参数。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> 运行浏览器但不显示可见窗口

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> 在所有已注册的现代浏览器中打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> 要使用的显示器，0 = 默认，-1 = 丢弃，-2 = 已配置的辅助显示器，默认值为 -1，无定位

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> 以全屏模式打开

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> 网络浏览器窗口的初始宽度

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Web浏览器窗口的初始高度

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> 网页浏览器窗口的初始 X 位置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Web浏览器窗口的初始Y位置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> 将浏览器窗口置于屏幕左侧

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> 将浏览器窗口放置在屏幕右侧

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> 将浏览器窗口置于屏幕顶部

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> 将浏览器窗口置于屏幕底部

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> 将浏览器窗口置于屏幕中央

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> 隐藏浏览器控件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> 阻止加载浏览器扩展

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> 禁用弹出窗口拦截器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> 设置浏览器接受语言的HTTP头

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> 向浏览器窗口发送击键时转义控制字符。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> 防止在向浏览器窗口发送击键后将键盘焦点返回给 PowerShell。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> 向浏览器发送击键时，使用 Shift+Enter 代替常规 Enter 进行换行。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> 发送不同键序列之间的延迟（以毫秒为单位）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> 打开后聚焦浏览器窗口

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> 打开后将浏览器窗口置于前台

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> 定位后最大化窗口

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> 定位后将窗口恢复至正常状态

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> 在打开浏览器后恢复 PowerShell 窗口焦点。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> 不要重复使用现有的浏览器窗口，而是创建一个新的

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> 返回浏览器进程的 [System.Diagnostics.Process] 对象

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> 别打开网页浏览器，直接返回网址

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> 打开网页浏览器后，返回网址

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFullScreen`

> 请勿在**全屏模式**下打开。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoApplicationMode`

> 显示浏览器控件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> 移除浏览器窗口的边框。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> 将浏览器窗口定位在与 PowerShell 不同的显示器上全屏显示，或与 PowerShell 在同一显示器上并排显示。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 对浏览器配置文件使用仅会话模式（关闭时清除Cookie和数据）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `so` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> 在打开浏览器前清除会话/配置文件数据。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 跳过恢复上一个浏览器会话。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ss`, `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-GenXdevAppCatalog.md)
- [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-Timeline.md)
- [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-ViralSimulation.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-Yab.md)
- [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-YabAIBattle.md)
