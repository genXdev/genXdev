# Start-VlcMediaPlayerPreviousInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcprev, `vlcback

## Synopsis

> Переходит к предыдущему элементу в плейлисте VLC Media Player.

## Description

Эта функция отправляет команду клавиши 'p' в VLC Media Player для перехода к предыдущему элементу в текущем плейлисте. Функция поддерживает операции WhatIf и восстанавливает фокус после отправки команды.

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
