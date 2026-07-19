# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> Alterna el estado de pausa/reproducción del VLC Media Player.

## Description

Esta función envía una tecla de espacio a VLC Media Player para alternar entre los estados de pausa y reproducción. Restaura automáticamente el foco a la ventana original después de enviar el comando de tecla.

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

Alterna el estado de reproducción/pausa de VLC Media Player.

### vlcpause

```powershell
vlcpause
```

Utiliza el alias para alternar entre pausa y reproducción.

### vlcplay

```powershell
vlcplay
```

Usa el alias alternativo para alternar el estado de pausa/reproducción.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
