# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> Переключает режим повтора в VLC Media Player.

## Description

Эта функция отправляет команду 'r' в VLC Media Player для переключения между различными режимами повтора (без повтора, повторить текущий, повторить все). Функция открывает VLC, если он еще не запущен, и возвращает фокус предыдущему окну после отправки команды.

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
