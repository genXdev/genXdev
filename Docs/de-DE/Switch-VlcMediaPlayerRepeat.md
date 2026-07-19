# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> Schaltet den Wiederholungsmodus im VLC Media Player um.

## Description

Diese Funktion sendet den 'r'-Tastenbefehl an den VLC Media Player, um zwischen verschiedenen Wiederholungsmodi (keine Wiederholung, aktuelles wiederholen, alle wiederholen) umzuschalten. Die Funktion öffnet VLC, falls es nicht bereits läuft, und gibt den Fokus nach dem Senden des Befehls an das vorherige Fenster zurück.

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
