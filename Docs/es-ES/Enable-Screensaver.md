# Enable-Screensaver

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Enable-Screensaver on GitHub](https://github.com/genXdev/genXdev)
