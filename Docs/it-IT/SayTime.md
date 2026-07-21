# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Annuncia l'ora corrente tramite sintesi vocale.

## Description

Questa funzione ottiene l'ora corrente e utilizza il motore di sintesi vocale del sistema per annunciarla verbalmente in formato ore e minuti. È utile per scopi di accessibilità o quando si ha bisogno di un annuncio udibile dell'ora.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/UtcNow.md)
