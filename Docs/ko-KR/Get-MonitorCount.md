# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 시스템에 연결된 디스플레이 모니터의 총 개수를 가져옵니다.

## Description

* Windows Presentation Foundation (WPF) Screen 도우미 클래스를 사용하여
  시스템에 현재 연결된 실제 디스플레이 모니터의 수를 정확하게 확인합니다.
* 여기에는 활성 상태이거나 감지되었지만 비활성화된 모니터가 모두 포함됩니다.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

연결된 모니터의 총 개수를 반환합니다 (예: 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

감지 과정을 자세히 보여주며 모니터 개수를 반환합니다.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
