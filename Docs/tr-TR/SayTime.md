# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Metin-konuşma kullanarak geçerli saati duyurur.

## Description

Bu işlev, geçerli saati alır ve sistemin metin-konuşma motorunu kullanarak saati saat ve dakika biçiminde sözlü olarak bildirir. Erişilebilirlik amaçları veya duyulabilir bir zaman bildirimine ihtiyaç duyduğunuzda kullanışlıdır.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/UtcNow.md)
