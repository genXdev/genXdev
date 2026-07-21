# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CPU가 AVX 및 AVX2 명령어 세트를 지원하는지 테스트합니다.

## Description

* Windows API(kernel32.dll IsProcessorFeaturePresent)를 사용하여 프로세서가 AVX 및 AVX2 명령어 세트를 지원하는지 확인합니다.
* AVX 및 AVX2 부울 속성을 가진 개체를 반환합니다.
* AI/ML 작업에 대한 하드웨어 호환성을 결정하는 데 유용합니다.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

CPU 명령어 집합 지원 여부를 확인하고 AVX/AVX2 가용성을 반환합니다.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-NumberOfCpuCores.md)
