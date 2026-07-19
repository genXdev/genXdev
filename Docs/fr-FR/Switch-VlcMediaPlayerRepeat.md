# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> Active ou désactive le mode répétition dans VLC Media Player.

## Description

Cette fonction envoie la commande de la touche 'r' à VLC Media Player pour basculer entre différents modes de répétition (pas de répétition, répéter le morceau en cours, tout répéter). La fonction ouvre VLC s'il n'est pas déjà en cours d'exécution et redonne le focus à la fenêtre précédente après avoir envoyé la commande.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('vlcrepeat')]

    param(
    )

    begin {

    }

    process {

        # send the repeat toggle key ('r') to vlc media player
        GenXdev\Open-VlcMediaPlayer -KeysToSend 'r' -RestoreFocus
    }

    end {

    }
```

## Examples

### Switch-VlcMediaPlayerRepeat

```powershell
Switch-VlcMediaPlayerRepeat
```

### vlcrepeat

```powershell
vlcrepeat
```

## Related Links

- [Switch-VlcMediaPlayerRepeat on GitHub](https://github.com/genXdev/genXdev)
