# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> Alterna o estado de mudo do VLC Media Player.

## Description

Esta função envia a tecla 'm' para o VLC Media Player para alternar entre os estados de áudio mudo e não mudo. A função foca o VLC, envia o comando de mudo/desmudo e, em seguida, restaura o foco para a janela anteriormente ativa.

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

Alterna o estado de mudo do VLC Media Player usando o nome completo da função.

### vlcmute

```powershell
vlcmute
```

Alterna o estado de mudo do VLC Media Player usando o alias curto.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
