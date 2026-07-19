# Get-EdgeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Microsoft Edge ブラウザ用に構成されたリモートデバッグポートを返します。

## Description

Microsoft Edge ブラウザのデバッグインターフェースに接続するために使用されるリモートデバッグポート番号を取得します。グローバル変数 $Global:EdgeDebugPort でカスタムポートが設定されていない場合は、デフォルトのポート 9223 を返します。この関数はカスタムポート設定を検証し、無効な場合はデフォルトにフォールバックします。

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
