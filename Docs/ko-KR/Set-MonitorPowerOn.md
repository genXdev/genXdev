# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> 모니터 전원을 켭니다.

## Description

GenXdev.Helpers.WindowObj를 통해 Windows API를 사용하여 절전/전원 꺼짐 상태에서 모니터를 깨웁니다. 이는 모니터가 켜져 있어야 하는 자동화 스크립트에 유용합니다.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

모니터 전원을 켭니다.

### Example 2

```powershell
wake-monitor
```

별칭을 사용하여 모니터 전원을 켭니다.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
