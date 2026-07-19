# Start-VlcMediaPlayerNextInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcnext

## Synopsis

> Avances el reproductor multimedia VLC al siguiente elemento en la lista de reproducción actual.

## Description

Esta función envía la pulsación de tecla 'n' a VLC Media Player para saltar a la siguiente pista o elemento multimedia en la lista de reproducción actualmente cargada. Enfoca la ventana de VLC, envía el comando de siguiente y restaura el foco en la consola de PowerShell. La función incluye compatibilidad con ShouldProcess para solicitudes de confirmación cuando sea necesario.

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
