# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> Tạo ra một tab Windows Terminal mới chạy PowerShell.

## Description

Mở một tab mới của Windows Terminal bằng cách mô phỏng phím tắt Ctrl+Shift+T.
Hàm đưa cửa sổ PowerShell lên phía trước, gửi tổ hợp phím,
và tùy chọn đóng tab hiện tại sau một khoảng thời gian trễ.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Giữ tab hiện tại mở sau khi tạo tab mới |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Parameter Details

### `-DontCloseThisTab`

> Giữ tab hiện tại mở sau khi tạo tab mới

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-IsSpeaking.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/UtcNow.md)
