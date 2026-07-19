# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> Bascule l'état pause/lecture du lecteur multimédia VLC.

## Description

Cette fonction envoie une touche espace au VLC Media Player pour basculer entre les états de pause et de lecture. Elle restaure automatiquement le focus sur la fenêtre d'origine après avoir envoyé la commande de la touche.

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

Bascule l'état de pause/lecture de VLC Media Player.

### vlcpause

```powershell
vlcpause
```

Utilise l'alias pour basculer entre pause et lecture.

### vlcplay

```powershell
vlcplay
```

Utilise l'alias alternatif pour basculer l'état pause/lecture.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
