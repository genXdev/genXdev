# Start-VlcMediaPlayerPreviousInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcprev, `vlcback

## Synopsis

> Move para o item anterior na lista de reprodução do VLC Media Player.

## Description

Esta função envia o comando da tecla 'p' para o VLC Media Player para navegar até o item anterior na playlist atual. A função suporta operações WhatIf e restaurará o foco após enviar o comando.

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
