# Get-ChromeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 返回Google Chrome配置的远程调试端口。

## Description

检索并管理Google Chrome的远程调试端口配置。
函数首先检查存储在$Global:ChromeDebugPort中的自定义端口号。
如果未找到或无效，则默认使用端口9222。该端口号随后被全局存储，
以供其他Chrome自动化函数使用。

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
