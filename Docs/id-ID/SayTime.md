# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Mengumumkan waktu saat ini menggunakan teks-ke-ucapan.

## Description

Fungsi ini mendapatkan waktu saat ini dan menggunakan mesin text-to-speech sistem untuk mengumumkannya secara lisan dalam format jam dan menit. Ini berguna untuk tujuan aksesibilitas atau ketika Anda membutuhkan pengumuman waktu yang dapat didengar.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/UtcNow.md)
