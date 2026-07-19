# Enable-Screensaver

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Démarre l'écran de veille Windows configuré.

## Description

Active l'économiseur d'écran du système Windows en exécutant l'exécutable d'économiseur d'écran par défaut (scrnsave.scr) avec le commutateur /s pour le démarrer immédiatement.

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
