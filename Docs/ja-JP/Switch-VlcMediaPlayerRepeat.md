# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Switch-VlcMediaPlayerRepeat on GitHub](https://github.com/genXdev/genXdev)
