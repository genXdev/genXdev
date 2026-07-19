# Start-VlcMediaPlayerNextInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcnext

## Synopsis

> Avança o VLC Media Player para o próximo item na lista de reprodução atual.

## Description

Esta função envia o pressionamento da tecla 'n' para o VLC Media Player para pular para a próxima faixa ou item de mídia na lista de reprodução atualmente carregada. Ela foca a janela do VLC, envia o comando de próximo e restaura o foco para o console do PowerShell. A função inclui suporte a ShouldProcess para solicitações de confirmação quando necessário.

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
