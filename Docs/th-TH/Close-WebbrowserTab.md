# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct`, `CloseTab`

## Synopsis

> ปิดแท็บเว็บเบราว์เซอร์ที่เลือกอยู่ในขณะนี้

## Description

ปิดแท็บเบราว์เซอร์ที่เลือกอยู่ในปัจจุบันโดยใช้เมธอด CloseAsync() ของ ChromeDriver หากไม่มีแท็บใดถูกเลือกอยู่ ฟังก์ชันจะพยายามเลือกแท็บที่ใช้ล่าสุดโดยอัตโนมัติก่อนที่จะปิด

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | นำทางโดยใช้เบราว์เซอร์ Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | นำทางโดยใช้เบราว์เซอร์ Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | เปิดใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร |
| `-Firefox` | SwitchParameter | — | — | Named | — | เปิดใน Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ WebKit ที่จัดการโดย Playwright |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Parameter Details

### `-Edge`

> นำทางโดยใช้เบราว์เซอร์ Microsoft Edge

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

> นำทางโดยใช้เบราว์เซอร์ Google Chrome

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

> เปิดใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าเบราว์เซอร์เริ่มต้นคืออะไร

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

> เปิดใน Firefox

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
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-WebsiteInAllBrowsers.md)
