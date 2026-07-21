# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo`

## Synopsis

> ขยายองค์ประกอบวิดีโอแรกที่พบในแท็บเบราว์เซอร์ปัจจุบันให้ใหญ่ที่สุด

## Description

ดำเนินการรันโค้ด JavaScript เพื่อค้นหาและขยายองค์ประกอบวิดีโอแรกบนหน้าเว็บปัจจุบันให้ใหญ่สุด วิดีโอจะถูกตั้งค่าให้ครอบคลุมทั้ง viewport โดยมีค่า z-index สูงสุดเพื่อให้มองเห็นได้ชัดเจน ซ่อนแถบเลื่อนของหน้าเพื่อประสบการณ์เต็มจอที่สะอาด

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | ใช้เว็บเบราว์เซอร์ Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | ใช้ Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร |
| `-Firefox` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ WebKit ที่จัดการโดย Playwright |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Parameter Details

### `-Edge`

> ใช้เบราว์เซอร์ Microsoft Edge

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

> ใช้เว็บเบราว์เซอร์ Google Chrome

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

> ใช้ Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร

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

> ใช้เบราว์เซอร์ Firefox

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

> ใช้เบราว์เซอร์ WebKit ที่จัดการโดย Playwright

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

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Select-WebbrowserTab.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-WebsiteInAllBrowsers.md)
