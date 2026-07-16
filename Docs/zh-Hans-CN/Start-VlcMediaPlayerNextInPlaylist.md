# Start-VlcMediaPlayerNextInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcnext

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
[CmdletBinding(SupportsShouldProcess)]
    [Alias('vlcnext')]

    param(
    )

    begin {

        # check if shouldprocess is enabled and user wants to proceed
        Microsoft.PowerShell.Utility\Write-Verbose `
            'Preparing to advance VLC Media Player to next playlist item'
    }

    process {

        # verify user confirmation before sending next command to vlc
        if ($PSCmdlet.ShouldProcess('VLC Media Player', 'Next in playlist')) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Sending next command to VLC Media Player'

            # send the 'n' key to vlc to advance to next playlist item
            # restore focus ensures powershell regains control after command
            GenXdev\Open-VlcMediaPlayer -KeysToSend 'n' -RestoreFocus

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Successfully sent next command to VLC Media Player'
        }
    }

    end {
    }
```

## Related Links

- [Start-VlcMediaPlayerNextInPlaylist on GitHub](https://github.com/genXdev/genXdev)
