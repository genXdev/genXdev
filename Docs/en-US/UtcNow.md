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

- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Enable-Screensaver.md)
- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Now.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-MediaFile.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/SayTime.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOn.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-VLCPlayerFocused.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Stop-TextToSpeech.md)
