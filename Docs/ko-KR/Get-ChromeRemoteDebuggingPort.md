# Get-ChromeRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Google Chrome에 대해 구성된 원격 디버깅 포트를 반환합니다.

## Description

Google Chrome의 원격 디버깅 포트 구성을 검색하고 관리합니다.
함수는 먼저 $Global:ChromeDebugPort에 저장된 사용자 지정 포트 번호를 확인합니다.
찾을 수 없거나 유효하지 않은 경우 기본적으로 포트 9222를 사용합니다. 그런 다음 포트 번호가 전역적으로 저장되어
다른 Chrome 자동화 함수에서 사용됩니다.

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
