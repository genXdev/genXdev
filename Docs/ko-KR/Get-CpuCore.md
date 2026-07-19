# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 시스템의 논리적 CPU 코어의 총 개수를 계산하여 반환합니다.

## Description

Windows Management Instrumentation(WMI)를 통해 시스템 하드웨어를 쿼리하여 논리 CPU 코어의 총 개수를 확인합니다. 이 함수는 물리적 코어 수에 2를 곱하여 하이퍼스레딩을 고려합니다.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

논리적 CPU 코어의 총 개수를 가져옵니다.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
