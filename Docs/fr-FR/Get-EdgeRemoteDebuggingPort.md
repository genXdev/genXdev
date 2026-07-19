# Get-EdgeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Retourne le port de débogage à distance configuré pour le navigateur Microsoft Edge.

## Description

Récupère le numéro de port de débogage à distance utilisé pour se connecter à l'interface de débogage du navigateur Microsoft Edge. Si aucun port personnalisé n'est configuré via la variable globale $Global:EdgeDebugPort, retourne le port par défaut 9223. La fonction valide toute configuration de port personnalisé et utilise le port par défaut si celle-ci est invalide.

## Syntax

```powershell
[CmdletBinding()]
    [OutputType([int])]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    param()

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Get-EdgeRemoteDebuggingPort'
    }


    process {
        # set default edge debugging port
        [int] $port = 9223

        # check if user has configured a custom port in global scope
        if ($Global:EdgeDebugPort) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Found global EdgeDebugPort configuration'

            # attempt to parse the configured port value, keeping default if invalid
            if ([int]::TryParse($Global:EdgeDebugPort, [ref] $port)) {
                Microsoft.PowerShell.Utility\Write-Verbose "Using configured port: $port"
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "Invalid port config, using default: $port"
            }
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose "No custom port configured, using default: $port"
        }

        # ensure global variable matches returned port for consistency
        $null = Microsoft.PowerShell.Utility\Set-Variable `
            -Name EdgeDebugPort `
            -Value $port `
            -Scope Global

        # return the resolved port number
        return $port
    }

    end {
        Microsoft.PowerShell.Utility\Write-Verbose 'Completed Get-EdgeRemoteDebuggingPort'
    }
```

## Examples

### Get-EdgeRemoteDebuggingPort Returns the configured debug port (default 9223 if not configured)

```powershell
Get-EdgeRemoteDebuggingPort
Returns the configured debug port (default 9223 if not configured)
```

## Outputs

- `Int32
Returns the port number to use for Edge remote debugging`
- `Int32`

## Related Links

- [Get-EdgeRemoteDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
