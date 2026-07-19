# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> Переключает состояние паузы/воспроизведения медиаплеера VLC.

## Description

Эта функция отправляет клавишу пробела в VLC Media Player для переключения между состояниями паузы и воспроизведения. Она автоматически возвращает фокус исходному окну после отправки команды клавиши.

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

Переключает состояние воспроизведения/паузы в VLC Media Player.

### vlcpause

```powershell
vlcpause
```

Использует псевдоним для переключения состояния воспроизведения/паузы.

### vlcplay

```powershell
vlcplay
```

Использует альтернативный псевдоним для переключения состояния паузы/воспроизведения.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
