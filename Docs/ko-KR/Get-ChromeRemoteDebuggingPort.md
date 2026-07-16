# Get-ChromeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
[CmdletBinding()]
    [OutputType([System.Int32])]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]

    param()

    begin {

        # initialize the default chrome debugging port
        [int] $port = 9222
    }


    process {

        # check if a custom port is configured in the global scope
        if ($Global:ChromeDebugPort) {

            # attempt to parse the global port value
            if ([int]::TryParse($Global:ChromeDebugPort, [ref] $port)) {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    -Message "Using configured Chrome debug port: $port"
            }
            else {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    -Message "Invalid port config, using default port: $port"
            }
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                -Message "No custom port configured, using default port: $port"
        }

        # ensure the port is available in global scope
        $null = Microsoft.PowerShell.Utility\Set-Variable `
            -Name ChromeDebugPort `
            -Value $port `
            -Scope Global
    }

    end {

        return $port
    }
```

## Outputs

- `Int32`

## Related Links

- [Get-ChromeRemoteDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
