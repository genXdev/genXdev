# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> เชื่อมต่อไปยังอินสแตนซ์เบราว์เซอร์ที่มีอยู่ผ่านพอร์ตดีบัก

## Description

สร้างการเชื่อมต่อไปยังอินสแตนซ์เบราว์เซอร์ที่ใช้ Chromium ที่กำลังทำงานอยู่ โดยใช้ URL ดีบักเกอร์ WebSocket สร้างอินสแตนซ์ Playwright และเชื่อมต่อผ่าน CDP (Chrome DevTools Protocol) อินสแตนซ์เบราว์เซอร์ที่เชื่อมต่อแล้วจะถูกเก็บไว้ในพจนานุกรมทั่วโลกเพื่อใช้อ้างอิงในภายหลัง

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | URL ของ WebSocket สำหรับการเชื่อมต่อดีบักเกอร์ในเบราว์เซอร์ |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Parameter Details

### `-WsEndpoint <String>`

> URL ของ WebSocket สำหรับการเชื่อมต่อดีบักเกอร์ในเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Unprotect-WebbrowserTab.md)
