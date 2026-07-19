# Start-VlcMediaPlayerPreviousInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcprev, `vlcback

## Synopsis

> Moves to the previous item in the VLC Media Player playlist.

## Description

This function sends the 'p' key command to VLC Media Player to navigate to the
previous item in the current playlist. The function supports WhatIf operations
and will restore focus after sending the command.

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

## Examples

### Start-VlcMediaPlayerPreviousInPlaylist

```powershell
Start-VlcMediaPlayerPreviousInPlaylist
```

### vlcprev

```powershell
vlcprev
```

### vlcback

```powershell
vlcback
```

## Related Links

- [Start-VlcMediaPlayerPreviousInPlaylist on GitHub](https://github.com/genXdev/genXdev)
