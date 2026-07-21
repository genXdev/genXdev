# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 시스템의 논리적 CPU 코어 총 개수를 계산하여 반환합니다.

## Description

WMI(Windows Management Instrumentation)를 통해 시스템 하드웨어를 쿼리하여 총 논리적 CPU 코어 수를 확인합니다. 함수는 하이퍼스레딩을 고려하여 물리적 코어 수에 2를 곱합니다.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

논리 CPU 코어의 총 개수를 가져옵니다.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-CpuAvx.md)
