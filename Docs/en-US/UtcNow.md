# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Gets the current UTC (Coordinated Universal Time) date and time.

## Description

Returns the current UTC date and time as a System.DateTime object. This function
provides a standardized way to retrieve UTC time across different systems and
time zones. The returned DateTime object can be used for timestamp
 synchronization, logging, and cross-timezone operations.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Stop-TextToSpeech.md)
