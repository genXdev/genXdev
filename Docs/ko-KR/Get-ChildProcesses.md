# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 현재 PowerShell 프로세스의 모든 하위 프로세스를 검색합니다.

## Description

* 모든 실행 중인 프로세스를 검사하고 현재 PowerShell 프로세스를 부모 프로세스 체인에서 상위로 가지는 프로세스를 식별합니다.
* 직접적인 자식 프로세스와 그 하위 프로세스(손자 등)를 모두 포함합니다.

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

현재 PowerShell 세션의 모든 자식 프로세스를 가져옵니다.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

자식 프로세스를 가져오며 상세 프로세스 감지 정보를 포함한 자세한 출력

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
