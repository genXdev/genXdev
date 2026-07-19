# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CUDA 호환 GPU가 충분한 메모리를 가지고 있는지 확인합니다.

## Description

최소 4GB의 비디오 RAM을 갖춘 CUDA 호환 GPU가 시스템에 있는지 확인합니다. 설치된 비디오 컨트롤러를 쿼리하고 메모리 용량을 확인하기 위해 WMI(Windows Management Instrumentation)를 사용합니다. 이 검사는 상당한 GPU 메모리가 필요한 AI 워크로드에 필수적입니다.

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

시스템에 CUDA를 지원하는 GPU가 있는지 확인하고 충분한 메모리가 있는지 확인합니다.

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
