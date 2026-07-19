# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 지정된 모니터의 Windows 디스플레이 배율(DPI 설정)을 검색합니다.

## Description

* 시스템의 모니터에 구성된 현재 Windows 디스플레이 배율을 가져옵니다.
* 배율은 100이 표준 배율(96 DPI)을 나타내는 백분율로 표시됩니다. 일반적인 값은 100, 125, 150, 200입니다.
* 모니터가 지정되지 않은 경우 주 디스플레이의 배율을 반환합니다.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | 확인할 모니터 인덱스 (0 = 주 모니터) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

주 모니터의 배율 비율을 반환합니다.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

위치 매개변수를 사용하여 두 번째 모니터의 배율 백분율을 반환합니다.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
