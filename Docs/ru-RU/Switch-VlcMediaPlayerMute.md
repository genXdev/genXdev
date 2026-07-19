# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> Переключает состояние отключения звука в медиаплеере VLC.

## Description

Эта функция отправляет клавишу 'm' в VLC Media Player для переключения между отключенным и включенным состоянием звука. Функция фокусируется на VLC, отправляет команду отключения/включения звука, а затем восстанавливает фокус на ранее активное окно.

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

Переключает состояние отключения звука в VLC Media Player с помощью полного имени функции.

### vlcmute

```powershell
vlcmute
```

Переключает состояние отключения звука VLC Media Player с помощью короткого псевдонима.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
