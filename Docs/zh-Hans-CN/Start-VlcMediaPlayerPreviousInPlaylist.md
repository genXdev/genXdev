# Start-VlcMediaPlayerPreviousInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcprev, `vlcback

## Synopsis

> 跳到VLC媒体播放器播放列表中的上一个项目。

## Description

该函数向VLC媒体播放器发送 'p' 键命令，以导航到当前播放列表中的上一个项目。该函数支持 WhatIf 操作，并在发送命令后恢复焦点。

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
