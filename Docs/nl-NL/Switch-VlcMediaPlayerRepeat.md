# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> Schakelt de herhaalmodus in VLC Media Player in of uit.

## Description

Deze functie verzendt het commando 'r' naar VLC Media Player om te schakelen tussen verschillende herhaalmodi (geen herhaling, herhaal huidige, herhaal alles). De functie opent VLC als het nog niet actief is en herstelt de focus naar het vorige venster na het verzenden van het commando.

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
