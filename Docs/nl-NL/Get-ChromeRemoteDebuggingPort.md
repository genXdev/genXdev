# Get-ChromeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Retourneert de geconfigureerde externe debugpoort voor Google Chrome.

## Description

Haalt de configuratie van de externe foutopsporingsport voor Google Chrome op en beheert deze.
De functie controleert eerst op een aangepast poortnummer dat is opgeslagen in $Global:ChromeDebugPort.
Als dit niet wordt gevonden of ongeldig is, wordt standaard poort 9222 gebruikt. Het poortnummer wordt vervolgens globaal
opgeslagen voor gebruik door andere Chrome-automatiseringsfuncties.

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

## Examples

### $port = Get-ChromeRemoteDebuggingPort Write-Host "Chrome debug port: $port"

```powershell
$port = Get-ChromeRemoteDebuggingPort
Write-Host "Chrome debug port: $port"
```

### $port = Get-ChromePort Write-Host "Chrome debug port: $port"

```powershell
$port = Get-ChromePort
Write-Host "Chrome debug port: $port"
```

## Outputs

- `Int32
Returns the configured Chrome debugging port number.`
- `Int32`

## Related Links

- [Get-ChromeRemoteDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
