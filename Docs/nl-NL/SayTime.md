# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Kondigt de huidige tijd aan met behulp van tekst-naar-spraak.

## Description

Deze functie haalt de huidige tijd op en gebruikt de tekst-naar-spraak-engine van het systeem om deze in uren en minuten te melden. Het is handig voor toegankelijkheidsdoeleinden of wanneer u een hoorbare tijdsaankondiging nodig hebt.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayDate.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/UtcNow.md)
