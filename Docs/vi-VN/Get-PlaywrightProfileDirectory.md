# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Lấy thư mục hồ sơ trình duyệt Playwright cho các phiên làm việc liên tục.

## Description

* Tạo và quản lý các thư mục hồ sơ trình duyệt cho tự động hóa kiểm thử Playwright.
* Hồ sơ được lưu trữ trong LocalAppData dưới GenXdev.Powershell\Playwright.profiles.
* Mỗi giá trị BrowserType có thư mục con riêng, giữ các hồ sơ trình duyệt thực (ChromeNormal, EdgeNormal) tách biệt với các hồ sơ Playwright tích hợp (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Loại trình duyệt: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright hoặc WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Tạo hoặc trả về đường dẫn cho hồ sơ trình duyệt Chrome được cài đặt bởi hệ điều hành.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Tạo hoặc trả về đường dẫn cho hồ sơ trình duyệt Chromium được tự động phát hiện.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Tạo hoặc trả về đường dẫn cho hồ sơ Playwright Chromium được đóng gói.

## Parameter Details

### `-BrowserType <String>`

> Loại trình duyệt: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright hoặc WebKitPlaywright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unprotect-WebbrowserTab.md)
