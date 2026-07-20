# Set-VLCPlayerFocused

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `showvlc`, `vlcf`, `fvlc`

## Synopsis

> Sets focus to the VLC media player window.

## Description

Locates a running instance of VLC media player and brings its window to the
foreground, making it the active window. If VLC is not running, silently
continues without error. Uses Windows API calls to manipulate window focus.

## Syntax

```powershell
Set-VLCPlayerFocused [<CommonParameters>]
```

## Examples

### Set-VLCPlayerFocused Brings the VLC player window to front and gives it focus

```powershell
Set-VLCPlayerFocused
Brings the VLC player window to front and gives it focus
```

### vlcf Same operation using the short alias

```powershell
vlcf
Same operation using the short alias
```

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
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/UtcNow.md)
