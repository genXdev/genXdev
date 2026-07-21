# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ส่งกลับชุดของเว็บเบราว์เซอร์สมัยใหม่ที่ติดตั้งแล้ว

## Description

* ค้นพบและส่งคืนรายละเอียดเกี่ยวกับเว็บเบราว์เซอร์สมัยใหม่ที่ติดตั้งบนระบบ
* ดึงข้อมูลรวมถึงชื่อ คำอธิบาย เส้นทางไอคอน เส้นทางไฟล์ปฏิบัติการ และสถานะเบราว์เซอร์เริ่มต้นโดยการสอบถามรีจิสทรีของ Windows
* ส่งคืนเฉพาะเบราว์เซอร์ที่มีความสามารถที่จำเป็นลงทะเบียนใน Windows

## Syntax

```powershell
Get-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | เลือกอินสแตนซ์ของเบราว์เซอร์ Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | เลือกอินสแตนซ์เบราว์เซอร์ Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | เลือกเบราว์เซอร์ที่ใช้ Chromium เป็นค่าเริ่มต้น *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | เลือกอินสแตนซ์เบราว์เซอร์ Firefox *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

ส่งคืนชุดของเว็บเบราว์เซอร์สมัยใหม่ที่ติดตั้งทั้งหมด

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

ตัวกรองเพื่อแสดงเฉพาะเบราว์เซอร์เริ่มต้นของระบบเท่านั้น

## Parameter Details

### `-Edge`

> เลือกอินสแตนซ์ของเบราว์เซอร์ Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Specific |

<hr/>
### `-Chrome`

> เลือกอินสแตนซ์เบราว์เซอร์ Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Specific |

<hr/>
### `-Chromium`

> เลือกเบราว์เซอร์ที่ใช้ Chromium เป็นค่าเริ่มต้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Specific |

<hr/>
### `-Firefox`

> เลือกอินสแตนซ์เบราว์เซอร์ Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Specific |

<hr/>
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightSessionReference.md)
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
