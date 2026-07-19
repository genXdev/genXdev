# Get-ChromeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Gibt den konfigurierten Remote-Debugging-Port für Google Chrome zurück.

## Description

Ruft die Konfiguration des Remote-Debugging-Ports für Google Chrome ab und verwaltet sie.
Die Funktion prüft zunächst auf eine benutzerdefinierte Portnummer, die in $Global:ChromeDebugPort gespeichert ist.
Wenn nicht gefunden oder ungültig, wird standardmäßig Port 9222 verwendet. Die Portnummer wird dann global
gespeichert, um von anderen Chrome-Automatisierungsfunktionen verwendet zu werden.

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
