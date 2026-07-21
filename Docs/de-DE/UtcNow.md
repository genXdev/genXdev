# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft das aktuelle UTC-Datum und die aktuelle UTC-Uhrzeit (koordinierte Weltzeit) ab.

## Description

Gibt das aktuelle UTC-Datum und die aktuelle UTC-Zeit als System.DateTime-Objekt zurück. Diese Funktion bietet eine standardisierte Möglichkeit, die UTC-Zeit über verschiedene Systeme und Zeitzonen hinweg abzurufen. Das zurückgegebene DateTime-Objekt kann für die Zeitsynchronisation, Protokollierung und systemübergreifende Operationen verwendet werden.

## Syntax

```powershell
UtcNow [<CommonParameters>]
```

## Examples

### $currentUtc = UtcNow Returns the current UTC time as a DateTime object.

```powershell
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.
```

### $timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss") Gets the current UTC time and formats it as a string.

```powershell
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
```

## Outputs

- `DateTime`

## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/de-DE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/de-DE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/de-DE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/de-DE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/de-DE/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-TextToSpeech.md)
