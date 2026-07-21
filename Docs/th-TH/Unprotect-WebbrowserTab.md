# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl`

## Synopsis

> ควบคุมแท็บเบราว์เซอร์ที่เลือกไว้เพื่อการจัดการแบบโต้ตอบ

## Description

ฟังก์ชันนี้เปิดใช้งานการควบคุมแบบโต้ตอบของแท็บเบราว์เซอร์ที่ก่อนหน้านี้ถูกเลือกโดยใช้ Select-WebbrowserTab ฟังก์ชันนี้ให้การเข้าถึงโดยตรงไปยังคุณสมบัติและวิธีการของออบเจกต์ Microsoft Playwright Page ซึ่งอนุญาตให้มีการโต้ตอบกับเบราว์เซอร์โดยอัตโนมัติ

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | ใช้แท็บปัจจุบันแทนการเลือกแท็บใหม่ *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | รีสตาร์ทเบราว์เซอร์หากไม่พบเซิร์ฟเวอร์ดีบัก *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Parameter Details

### `-UseCurrent`

> ใช้แท็บปัจจุบันแทนการเลือกแท็บใหม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `current` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-Force`

> รีสตาร์ทเบราว์เซอร์หากไม่พบเซิร์ฟเวอร์ดีบัก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-WebbrowserVideos.md)
