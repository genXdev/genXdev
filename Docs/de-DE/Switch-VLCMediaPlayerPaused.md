# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> Schaltet den Pause-/Wiedergabestatus des VLC Media Players um.

## Description

Diese Funktion sendet einen Leertasten-Befehl an den VLC Media Player, um zwischen Pause- und Wiedergabestatus umzuschalten. Sie stellt automatisch den Fokus auf das ursprüngliche Fenster wieder her, nachdem der Tastenbefehl gesendet wurde.

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

Schaltet den Pause-/Wiedergabezustand des VLC Media Players um.

### vlcpause

```powershell
vlcpause
```

Verwendet den Alias, um den Pause-/Wiedergabestatus umzuschalten.

### vlcplay

```powershell
vlcplay
```

Verwendet den alternativen Alias, um den Pause-/Wiedergabezustand umzuschalten.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
