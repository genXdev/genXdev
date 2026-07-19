# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> 切换VLC媒体播放器的暂停/播放状态。

## Description

此函数向VLC媒体播放器发送空格键，以在暂停和播放状态之间切换。发送按键命令后，它会自动将焦点恢复到原始窗口。

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

切换 VLC 媒体播放器的暂停/播放状态。

### vlcpause

```powershell
vlcpause
```

使用别名来切换暂停/播放状态。

### vlcplay

```powershell
vlcplay
```

使用备用别名切换暂停/播放状态。

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
