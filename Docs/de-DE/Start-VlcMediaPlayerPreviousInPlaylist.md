# Start-VlcMediaPlayerPreviousInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcprev, `vlcback

## Synopsis

> Geht zum vorherigen Element in der VLC Media Player Wiedergabeliste.

## Description

Diese Funktion sendet den Befehl der Taste 'p' an VLC Media Player, um zum vorherigen Element in der aktuellen Wiedergabeliste zu navigieren. Die Funktion unterstützt WhatIf-Operationen und stellt den Fokus nach dem Senden des Befehls wieder her.

## Syntax

```powershell
[CmdletBinding(SupportsShouldProcess)]
    [Alias('vlcprev', 'vlcback')]

    param (
    )

    begin {

    }

    process {

        # check if the user wants to proceed with the operation
        if ($PSCmdlet.ShouldProcess('VLC Media Player',
            'Go to previous item in playlist')) {

            # send the 'p' key to vlc media player to go to previous playlist item
            GenXdev\Open-VlcMediaPlayer -KeysToSend 'p' -RestoreFocus
        }
    }

    end {

    }
```

## Examples

### Start-VlcMediaPlayerPreviousInPlaylist

```powershell
Start-VlcMediaPlayerPreviousInPlaylist
```

### vlcprev

```powershell
vlcprev
```

### vlcback

```powershell
vlcback
```

## Related Links

- [Start-VlcMediaPlayerPreviousInPlaylist on GitHub](https://github.com/genXdev/genXdev)
