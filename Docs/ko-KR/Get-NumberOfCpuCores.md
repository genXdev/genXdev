# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 시스템의 논리적 CPU 코어 총 개수를 계산하여 반환합니다.

## Description

Windows Management Instrumentation(WMI)를 통해 시스템 하드웨어를 쿼리하여 논리 CPU 코어의 총 개수를 확인합니다. 이 cmdlet은 하이퍼스레딩을 고려하여 물리적 코어 수에 2를 곱합니다. 이 정보는 병렬 처리 작업을 최적화하고 시스템 기능을 이해하는 데 유용합니다.

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

시스템에서 사용할 수 있는 논리적 CPU 코어의 총 개수를 검색합니다.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-CpuAvx.md)
