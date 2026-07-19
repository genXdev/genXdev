# Get-ChromeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Google Chrome に設定されたリモートデバッグポートを返します。

## Description

Google Chromeのリモートデバッグポート設定を取得および管理します。
この関数は、まず$Global:ChromeDebugPortに保存されているカスタムポート番号を確認します。
見つからないか無効な場合、デフォルトでポート9222を使用します。ポート番号はその後、
他のChrome自動化関数で使用するためにグローバルに保存されます。

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
