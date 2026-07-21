# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Ottiene la data e l'ora UTC (Coordinated Universal Time) correnti.

## Description

Restituisce la data e l'ora UTC correnti come oggetto System.DateTime. Questa funzione fornisce un modo standardizzato per recuperare l'ora UTC su diversi sistemi e fusi orari. L'oggetto DateTime restituito può essere utilizzato per la sincronizzazione dei timestamp, la registrazione e le operazioni tra fusi orari.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Stop-TextToSpeech.md)
