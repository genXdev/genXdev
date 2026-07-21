# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Thông báo thời gian hiện tại bằng giọng nói.

## Description

Hàm này lấy thời gian hiện tại và sử dụng công cụ chuyển văn bản thành giọng nói của hệ thống để thông báo bằng giọng nói theo định dạng giờ và phút. Nó hữu ích cho mục đích trợ năng hoặc khi bạn cần thông báo thời gian bằng âm thanh.

## Syntax

```powershell
SayTime [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Wait` | SwitchParameter | — | — | Named | — | The `-Wait` parameter. |

## Examples

### SayTime Speaks the current time, e.g. "The time is 14 hours and 30 minutes"

```powershell
SayTime
Speaks the current time, e.g. "The time is 14 hours and 30 minutes"
```

## Parameter Details

### `-Wait`

> The `-Wait` parameter.

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
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/UtcNow.md)
