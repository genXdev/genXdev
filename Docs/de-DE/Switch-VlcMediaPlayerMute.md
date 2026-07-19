# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> Schaltet die Stummschaltung des VLC Media Players um.

## Description

Diese Funktion sendet das 'm'-Zeichen an VLC Media Player, um zwischen stummgeschalteten und nicht stummgeschalteten Audiozuständen umzuschalten. Die Funktion fokussiert VLC, sendet den Befehl zum Stummschalten/Aufheben der Stummschaltung und stellt dann den Fokus auf das zuvor aktive Fenster wieder her.

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

VLC.MediaPlayer.ToggleMute()

### vlcmute

```powershell
vlcmute
```

Schaltet den Stumm-Modus des VLC Media Players über den kurzen Alias um.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
