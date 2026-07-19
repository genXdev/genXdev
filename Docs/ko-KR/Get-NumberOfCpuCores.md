# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 시스템의 논리적 CPU 코어의 총 개수를 계산하여 반환합니다.

## Description

WMI(Windows Management Instrumentation)를 통해 시스템 하드웨어를 쿼리하여 총 논리적 CPU 코어 수를 확인합니다. 이 cmdlet은 하이퍼스레딩을 고려하여 물리적 코어 수에 2를 곱합니다. 이 정보는 병렬 처리 작업을 최적화하고 시스템 기능을 이해하는 데 유용합니다.

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

시스템에서 사용 가능한 논리적 CPU 코어의 총 개수를 검색합니다.

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
