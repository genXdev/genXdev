# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> VLCメディアプレーヤーでリピートモードを切り替えます。

## Description

この関数は、VLCメディアプレーヤーに「r」キーコマンドを送信して、異なるリピートモード（リピートなし、現在の項目をリピート、すべてをリピート）を切り替えます。この関数は、VLCがまだ起動していない場合は起動し、コマンド送信後は前のウィンドウにフォーカスを戻します。

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
