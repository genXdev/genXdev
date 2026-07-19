# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> PowerShell 터미널을 호스팅하는 창에 대한 프로세스 개체를 반환합니다.

## Description

* 현재 PowerShell 프로세스에서 시작하여 프로세스 트리를 따라 올라가면서 터미널을 호스팅하는 부모 창을 찾습니다.
* 직접적인 부모 프로세스에 메인 창 핸들이 없는 경우, 메인 창이 있는 유사한 프로세스를 검색합니다.
* PowerShell 세션을 포함하는 실제 터미널 창 프로세스(예: Windows Terminal, ConHost 등)를 식별하는 데 유용합니다.

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

현재 PowerShell 세션을 호스팅하는 프로세스를 반환하고 그 이름을 표시합니다.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
