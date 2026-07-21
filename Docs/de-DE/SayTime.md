# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Gibt die aktuelle Uhrzeit mittels Text-zu-Sprache aus.

## Description

Diese Funktion ruft die aktuelle Zeit ab und nutzt die Sprachausgabe des Systems, um sie im Stunden- und Minutenformat verbal anzukündigen. Dies ist nützlich für Barrierefreiheitszwecke oder wenn Sie eine hörbare Zeitansage benötigen.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/de-DE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/de-DE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/de-DE/SayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/de-DE/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/de-DE/UtcNow.md)
