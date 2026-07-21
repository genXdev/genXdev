# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl`

## Synopsis

> Chiếm quyền điều khiển một tab trình duyệt đã chọn để thao tác tương tác.

## Description

Chức năng này cho phép điều khiển tương tác với một tab trình duyệt đã được chọn trước đó bằng Select-WebbrowserTab. Nó cung cấp quyền truy cập trực tiếp vào các thuộc tính và phương thức của đối tượng Microsoft Playwright Page, cho phép tự động hóa tương tác với trình duyệt.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Sử dụng tab hiện tại thay vì chọn một tab mới *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Khởi động lại trình duyệt nếu không phát hiện máy chủ gỡ lỗi *(Parameter set: )* |

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

> Sử dụng tab hiện tại thay vì chọn một tab mới

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

> Khởi động lại trình duyệt nếu không phát hiện máy chủ gỡ lỗi

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Stop-WebbrowserVideos.md)
