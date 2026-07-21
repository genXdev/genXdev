# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ส่งคืนเว็บเบราว์เซอร์เริ่มต้นที่กำหนดค่าสำหรับผู้ใช้ปัจจุบัน

## Description

* ดึงข้อมูลเกี่ยวกับเว็บเบราว์เซอร์เริ่มต้นของระบบโดยการสอบถามรีจิสทรีของ Windows
* ส่งคืนแฮชเทเบิลที่มีชื่อเบราว์เซอร์ คำอธิบาย เส้นทางไอคอน และเส้นทางไฟล์ปฏิบัติการ
* ฟังก์ชันจะตรวจสอบทั้งการตั้งค่าของผู้ใช้และการลงทะเบียนเบราว์เซอร์ทั่วทั้งระบบเพื่อระบุเบราว์เซอร์เริ่มต้น

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

รับข้อมูลโดยละเอียดเกี่ยวกับเบราว์เซอร์เริ่มต้น

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

เปิดเว็บเบราว์เซอร์เริ่มต้นด้วย URL ที่ระบุ

## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-BrowserBookmark.md)
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
