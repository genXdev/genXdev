# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> 在VLC媒体播放器中切换重复模式。

## Description

此函数向 VLC 媒体播放器发送 'r' 键命令，以在不同重复模式（不重复、重复当前、重复全部）之间切换。如果 VLC 未运行，该函数会打开它，并在发送命令后将焦点恢复到之前的窗口。

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
