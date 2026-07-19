# Enable-Screensaver

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Starts the configured Windows screensaver.

## Description

Activates the Windows system screensaver by executing the default screensaver
executable (scrnsave.scr) with the /s switch to start it immediately.

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
