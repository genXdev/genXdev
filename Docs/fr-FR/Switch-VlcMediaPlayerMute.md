# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> Bascule l'état de sourdine du lecteur multimédia VLC.

## Description

Cette fonction envoie la touche 'm' à VLC Media Player pour basculer entre les états audio muet et non muet. La fonction met VLC au premier plan, envoie la commande de mise en sourdine/activation du son, puis rétablit le focus sur la fenêtre précédemment active.

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

Bascule l'état de sourdine de VLC Media Player en utilisant le nom complet de la fonction.

### vlcmute

```powershell
vlcmute
```

Bascule l'état de sourdine du Lecteur multimédia VLC en utilisant l'alias court.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
