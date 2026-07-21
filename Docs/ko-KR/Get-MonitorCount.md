# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 시스템에 연결된 디스플레이 모니터의 총 개수를 가져옵니다.

## Description

* Windows Presentation Foundation(WPF) 화면 도우미 클래스를 사용하여
  시스템에 현재 연결된 실제 디스플레이 모니터 수를 정확히 확인합니다.
* 활성 모니터와 감지되었지만 비활성화된 모니터를 모두 포함합니다.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

연결된 모니터의 총 개수를 반환합니다(예: 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

감지 과정을 자세히 보여주는 자세한 출력과 함께 모니터 수를 반환합니다.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-CpuAvx.md)
