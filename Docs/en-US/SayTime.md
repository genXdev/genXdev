# SayTime

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Announces the current time using text-to-speech.

## Description

This function gets the current time and uses the system's text-to-speech engine
to verbally announce it in hours and minutes format. It's useful for
accessibility purposes or when you need an audible time announcement.

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

- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Enable-Screensaver.md)
- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Now.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-MediaFile.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/SayDate.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOn.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-VLCPlayerFocused.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/UtcNow.md)
