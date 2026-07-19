# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> 연결된 모든 모니터의 전원을 차단합니다.

## Description

Windows API 호출을 사용하여 연결된 모든 모니터에 전원 차단 신호를 보냅니다. 이는 모니터의 물리적 전원 버튼을 누르는 것과 동일합니다. 모니터는 절전 모드로 전환되지만 마우스를 움직이거나 키를 누르면 깨어날 수 있습니다.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

연결된 모든 모니터를 끕니다.

### Example 2

```powershell
poweroff
```

별칭을 사용하여 연결된 모든 모니터를 끕니다.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
