# Enable-Screensaver

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Inicia el protector de pantalla configurado de Windows.

## Description

Activa el protector de pantalla del sistema Windows ejecutando el ejecutable de protector de pantalla predeterminado (scrnsave.scr) con el interruptor /s para iniciarlo inmediatamente.

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
