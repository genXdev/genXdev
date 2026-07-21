# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Hämtar aktuellt UTC-datum och -tid (koordinerad universell tid).

## Description

Returnerar det aktuella UTC-datumet och UTC-tiden som ett System.DateTime-objekt. Denna funktion tillhandahåller ett standardiserat sätt att hämta UTC-tid över olika system och tidszoner. Det returnerade DateTime-objektet kan användas för tidstämpelsynkronisering, loggning och operationer över tidszoner.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Stop-TextToSpeech.md)
