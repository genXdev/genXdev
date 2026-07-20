# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor`, `monitoroff`

## Synopsis

> Turns the monitor power on.

## Description

Uses the Windows API through GenXdev.Helpers.WindowObj to wake up the monitor from sleep/power off state. This is useful for automation scripts that need to ensure the monitor is powered on.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Turns the monitor power on.

### Example 2

```powershell
wake-monitor
```

Turns the monitor power on using an alias.

## Related Links

- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Enable-Screensaver.md)
- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Now.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-MediaFile.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/SayTime.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOff.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-VLCPlayerFocused.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/UtcNow.md)
