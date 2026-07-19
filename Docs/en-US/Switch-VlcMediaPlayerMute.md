# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> Toggles the mute state of the VLC Media Player.

## Description

This function sends the 'm' key to VLC Media Player to toggle between muted
and unmuted audio states. The function focuses VLC, sends the mute/unmute
command, and then restores focus to the previously active window.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('vlcmute', 'vlcunmute')]

    param (
    )

    begin {

    }

    process {

        # send the 'm' key to vlc media player to toggle mute state
        GenXdev\Open-VlcMediaPlayer -KeysToSend 'm' -RestoreFocus
    }

    end {

    }
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

Toggles the mute state of VLC Media Player using the full function name.

### vlcmute

```powershell
vlcmute
```

Toggles the mute state of VLC Media Player using the short alias.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
