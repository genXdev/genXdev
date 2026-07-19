# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> Schakelt de demping van de VLC Media Player in of uit.

## Description

Deze functie stuurt de toets 'm' naar VLC Media Player om te schakelen tussen gedempte en niet-gedempte audiostreamen. De functie focust VLC, verzendt het dempen/niet-dempen commando en herstelt daarna de focus naar het eerder actieve venster.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('vlcmute', 'vlcunmute')]

    param (
    )

    begin {

    }

    process {

        # send the 'm' key to vlc media player to toggle mute state
        GenXdev\Open-VlcMediaPlayer -KeysToSend 'm' -RestoreFocus
    }

    end {

    }
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

Schakelt de dempstatus van VLC Media Player om met de volledige functienaam.

### vlcmute

```powershell
vlcmute
```

Schakelt de dempstatus van VLC Media Player om met behulp van de korte alias.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
