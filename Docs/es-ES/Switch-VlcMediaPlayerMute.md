# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> Alterna el estado de silencio del Reproductor Multimedia VLC.

## Description

Esta función envía la tecla 'm' a VLC Media Player para alternar entre los estados de audio silenciado y no silenciado. La función enfoca VLC, envía el comando de silenciar/activar sonido y luego restaura el enfoque a la ventana previamente activa.

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

Cambia el estado de silencio de VLC Media Player usando el nombre completo de la función.

### vlcmute

```powershell
vlcmute
```

Alterna el estado de silencio de VLC Media Player usando el alias corto.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
