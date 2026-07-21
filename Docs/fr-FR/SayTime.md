# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Annonce l'heure actuelle à l'aide de la synthèse vocale.

## Description

Cette fonction obtient l'heure actuelle et utilise le moteur de synthèse vocale du système pour l'annoncer verbalement au format heures et minutes. Elle est utile à des fins d'accessibilité ou lorsque vous avez besoin d'une annonce sonore de l'heure.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNow.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsecondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRsidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUtcNow.md)
