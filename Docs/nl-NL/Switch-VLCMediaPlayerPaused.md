# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> Schakelt de pauze/afspeelstatus van de VLC Media Player om.

## Description

Deze functie stuurt een spatiebalk naar VLC Media Player om te schakelen tussen gepauzeerd en afspelend. Het herstelt automatisch de focus naar het oorspronkelijke venster na het verzenden van de toetsopdracht.

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

Schakelt de pauze-/afspeelstatus van VLC Media Player om.

### vlcpause

```powershell
vlcpause
```

Gebruikt de alias om de pauze/afspeelstatus te wisselen.

### vlcplay

```powershell
vlcplay
```

Gebruikt het alternatieve alias om de pauze/afspeelstatus te wisselen.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
