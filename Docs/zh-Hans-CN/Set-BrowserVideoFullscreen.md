# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo`

## Synopsis

> 最大化当前浏览器标签页中找到的第一个视频元素。

## Description

执行JavaScript代码，定位并最大化当前网页上的第一个视频元素。视频将覆盖整个视口，并设置最大z-index以确保可见性。页面滚动条被隐藏，以实现干净的全屏体验。

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | 使用微软Edge浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | .NAME
    Get-Process
.SYNOPSIS
    获取在本地计算机上运行的进程。

.DESCRIPTION
    Get-Process cmdlet 获取本地计算机上的进程。

.PARAMETER Name
    指定要获取的进程的名称。可以输入多个名称（用逗号分隔）并使用通配符。

.PARAMETER Id
    指定要获取的进程的进程 ID (PID)。

.PARAMETER ComputerName
    获取指定计算机上的进程。默认值为本地计算机。

.INPUTS
    System.String[]
    可以通过管道将进程名称传递给 Get-Process。

.OUTPUTS
    System.Diagnostics.Process
    Get-Process 返回 System.Diagnostics.Process 对象。 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，使用 Microsoft Edge 或 Google Chrome。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用Firefox浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Parameter Details

### `-Edge`

> 使用微软Edge浏览器

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

> .NAME
    Get-Process
.SYNOPSIS
    获取在本地计算机上运行的进程。

.DESCRIPTION
    Get-Process cmdlet 获取本地计算机上的进程。

.PARAMETER Name
    指定要获取的进程的名称。可以输入多个名称（用逗号分隔）并使用通配符。

.PARAMETER Id
    指定要获取的进程的进程 ID (PID)。

.PARAMETER ComputerName
    获取指定计算机上的进程。默认值为本地计算机。

.INPUTS
    System.String[]
    可以通过管道将进程名称传递给 Get-Process。

.OUTPUTS
    System.Diagnostics.Process
    Get-Process 返回 System.Diagnostics.Process 对象。

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

> 根据默认浏览器，使用 Microsoft Edge 或 Google Chrome。

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

> 使用Firefox浏览器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> 使用 Playwright 管理的 WebKit 浏览器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Select-WebbrowserTab.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-WebsiteInAllBrowsers.md)
