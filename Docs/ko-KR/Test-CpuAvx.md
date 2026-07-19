# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CPU가 AVX 및 AVX2 명령어 세트를 지원하는지 테스트합니다.

## Description

* Windows API(kernel32.dll IsProcessorFeaturePresent)를 사용하여 프로세서가 AVX 및 AVX2 명령어 세트를 지원하는지 확인합니다.
* AVX 및 AVX2 부울 속성을 가진 객체를 반환합니다.
* AI/ML 워크로드에 대한 하드웨어 호환성을 결정하는 데 유용합니다.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

CPU 명령어 세트 지원을 확인하고 AVX/AVX2 가용성을 반환합니다.

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
