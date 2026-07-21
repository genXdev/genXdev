# Stop-WebbrowserVideos

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbsst`, `ssst`, `wbvideostop`

## Synopsis

> Tạm dừng phát lại video trong tất cả các phiên trình duyệt đang hoạt động.

## Description

Duyệt qua tất cả các phiên trình duyệt đang hoạt động và tạm dừng bất kỳ video nào đang phát bằng cách thực thi các lệnh JavaScript. Hàm duy trì trạng thái phiên ban đầu và xử lý lỗi một cách khéo léo.

## Syntax

```powershell
Stop-WebbrowserVideos [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Mở trong Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Mở trong Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Mở trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mở trong Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Sử dụng trình duyệt WebKit được quản lý bởi Playwright |

## Examples

### Stop-WebbrowserVideos

```powershell
Stop-WebbrowserVideos
```

### wbsst ##############################################################################

```powershell
wbsst
##############################################################################
```

## Parameter Details

### `-Edge`

> Mở trong Microsoft Edge

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

> Mở trong Google Chrome

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

> Mở trong Microsoft Edge hoặc Google Chrome, tùy thuộc vào trình duyệt mặc định

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

> Mở trong Firefox

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

> Sử dụng trình duyệt WebKit được quản lý bởi Playwright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Resume-WebbrowserTabVideo.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Unprotect-WebbrowserTab.md)
