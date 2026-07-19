# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> VLCメディアプレーヤーの一時停止/再生状態を切り替えます。

## Description

この機能は、VLCメディアプレーヤーにスペースキーを送信して、一時停止と再生の状態を切り替えます。キーコマンドを送信した後、自動的に元のウィンドウにフォーカスを戻します。

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

VLC Media Playerの一時停止/再生状態を切り替えます。

### vlcpause

```powershell
vlcpause
```

エイリアスを使用して、一時停止/再生の状態を切り替えます。

### vlcplay

```powershell
vlcplay
```

別名を使用して一時停止/再生状態を切り替えます。

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
