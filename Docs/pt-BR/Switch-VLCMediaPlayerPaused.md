# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> Alterna o estado de pausa/reprodução do VLC Media Player.

## Description

Esta função envia uma tecla de espaço para o VLC Media Player para alternar entre os estados de pausa e reprodução. Ela restaura automaticamente o foco para a janela original após enviar o comando de tecla.

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

Alterna o estado de pausa/reprodução do VLC Media Player.

### vlcpause

```powershell
vlcpause
```

Usa o alias para alternar o estado de pausa/reprodução.

### vlcplay

```powershell
vlcplay
```

Usa o alias alternativo para alternar o estado de pausa/reprodução.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
