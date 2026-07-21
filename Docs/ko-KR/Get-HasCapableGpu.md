# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CUDA를 지원하는 충분한 메모리를 가진 GPU가 있는지 확인합니다.

## Description

시스템에서 최소 4GB의 비디오 RAM을 갖춘 CUDA 호환 GPU를 검사합니다. Windows Management Instrumentation(WMI)를 사용하여 설치된 비디오 컨트롤러를 쿼리하고 메모리 용량을 확인합니다. 이 검사는 상당한 GPU 메모리가 필요한 AI 워크로드에 필수적입니다.

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

시스템에 충분한 메모리를 갖춘 CUDA 지원 GPU가 있는지 확인합니다.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-CpuAvx.md)
