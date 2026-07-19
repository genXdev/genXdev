# Enable-Screensaver

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Startet den konfigurierten Windows-Bildschirmschoner.

## Description

Aktiviert den Windows-Bildschirmschoner durch Ausführen des standardmäßigen Bildschirmschoner-Executables (scrnsave.scr) mit dem Schalter /s, um ihn sofort zu starten.

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Windows screensaver activation'
    }


    process {

        # execute the windows screensaver executable with the start switch
        & "$ENV:SystemRoot\system32\scrnsave.scr" /s
    }

    end {
    }
```

## Examples

### Enable-Screensaver

```powershell
Enable-Screensaver
```

## Related Links

- [Enable-Screensaver on GitHub](https://github.com/genXdev/genXdev)
