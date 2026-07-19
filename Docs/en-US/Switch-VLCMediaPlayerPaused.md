# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> Toggles the pause/play state of the VLC Media Player.

## Description

This function sends a space key to VLC Media Player to toggle between paused
and playing states. It automatically restores focus to the original window
after sending the key command.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('vlcpause', 'vlcplay')]

    param (
    )

    begin {

    }

    process {

        # send space key to vlc media player to toggle pause/play state
        Microsoft.PowerShell.Utility\Write-Verbose "Toggling VLC Media Player pause/play state"

        # send the space key command and restore focus to original window
        GenXdev\Open-VlcMediaPlayer -KeysToSend ' ' -RestoreFocus
    }

    end {

    }
```

## Examples

### Switch-VLCMediaPlayerPaused

```powershell
Switch-VLCMediaPlayerPaused
```

Toggles the pause/play state of VLC Media Player.

### vlcpause

```powershell
vlcpause
```

Uses the alias to toggle the pause/play state.

### vlcplay

```powershell
vlcplay
```

Uses the alternate alias to toggle the pause/play state.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
