# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> รับไดเรกทอรีโปรไฟล์เบราว์เซอร์ของ Playwright สำหรับเซสชันแบบถาวร

## Description

* สร้างและจัดการไดเรกทอรีโปรไฟล์เบราว์เซอร์สำหรับการทดสอบอัตโนมัติของ Playwright
* โปรไฟล์จะถูกเก็บไว้ใน LocalAppData ภายใต้ GenXdev.Powershell\Playwright.profiles
* ค่า BrowserType แต่ละค่าจะได้รับไดเรกทอรีย่อยของตัวเอง โดยแยกโปรไฟล์เบราว์เซอร์จริง (ChromeNormal, EdgeNormal) ออกจากโปรไฟล์ Playwright ที่มาพร้อมกัน (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright)

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | ประเภทเบราว์เซอร์: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright หรือ WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

สร้างหรือส่งคืนเส้นทางสำหรับโปรไฟล์เบราว์เซอร์ Chrome ที่ติดตั้งในระบบปฏิบัติการ

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

สร้างหรือส่งคืนเส้นทางสำหรับโปรไฟล์เบราว์เซอร์ Chromium ที่ตรวจพบโดยอัตโนมัติ

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

สร้างหรือส่งคืนพาธสำหรับโปรไฟล์ Playwright Chromium ที่มาพร้อมกัน

## Parameter Details

### `-BrowserType <String>`

> ประเภทเบราว์เซอร์: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright หรือ WebKitPlaywright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unprotect-WebbrowserTab.md)
