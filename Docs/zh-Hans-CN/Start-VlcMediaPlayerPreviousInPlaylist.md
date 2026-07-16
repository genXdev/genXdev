# Start-VlcMediaPlayerPreviousInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcprev, `vlcback

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Start-VlcMediaPlayerPreviousInPlaylist on GitHub](https://github.com/genXdev/genXdev)
