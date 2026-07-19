# Start-VlcMediaPlayerNextInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcnext

## Synopsis

> Laat VLC Media Player naar het volgende item in de huidige afspeellijst gaan.

## Description

Deze functie stuurt de 'n'-toetsaanslag naar VLC Media Player om naar het volgende nummer of media-item in de momenteel geladen afspeellijst te springen. Het focust het VLC-venster, stuurt de volgende-opdracht en herstelt de focus naar de PowerShell-console. De functie bevat ShouldProcess-ondersteuning voor bevestigingsprompts indien nodig.

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

## Examples

### Start-VlcMediaPlayerNextInPlaylist

```powershell
Start-VlcMediaPlayerNextInPlaylist
```

### vlcnext

```powershell
vlcnext
```

## Related Links

- [Start-VlcMediaPlayerNextInPlaylist on GitHub](https://github.com/genXdev/genXdev)
