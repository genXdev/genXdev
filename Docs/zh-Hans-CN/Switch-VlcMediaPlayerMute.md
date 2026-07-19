# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> 切换 VLC 媒体播放器的静音状态。

## Description

此函数向VLC Media Player发送'm'键，以在静音和非静音音频状态之间切换。该函数将焦点切换到VLC，发送静音/取消静音命令，然后将焦点恢复到先前活动的窗口。

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

使用完整函数名称切换 VLC 媒体播放器的静音状态。

### vlcmute

```powershell
vlcmute
```

使用短别名切换VLC媒体播放器的静音状态。

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
