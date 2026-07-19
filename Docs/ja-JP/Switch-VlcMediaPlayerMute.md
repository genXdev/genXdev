# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> VLC Media Player のミュート状態を切り替えます。

## Description

この関数は、VLCメディアプレーヤーに「m」キーを送信して、ミュートとミュート解除のオーディオ状態を切り替えます。この関数はVLCにフォーカスを移し、ミュート/ミュート解除コマンドを送信した後、以前アクティブだったウィンドウにフォーカスを戻します。

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

VLCメディアプレーヤーのミュート状態を、完全な関数名を使用して切り替えます。

### vlcmute

```powershell
vlcmute
```

ショートエイリアスを使用してVLCメディアプレーヤーのミュート状態を切り替えます。

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
