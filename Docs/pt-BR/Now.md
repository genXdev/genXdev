# Now

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
[CmdletBinding()]
    [OutputType([System.DateTime])]
    param()

    begin {

        # log function start with verbose output
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Now function to retrieve system date and time'
    }


    process {

        # return the current system datetime using .NET DateTime.Now property
        # this provides high-precision timestamp including date and time
        return [DateTime]::Now
    }

    end {
    }
```

## Outputs

- `DateTime`

## Related Links

- [Now on GitHub](https://github.com/genXdev/genXdev)
