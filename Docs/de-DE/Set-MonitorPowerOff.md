# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> Schaltet die Stromversorgung aller angeschlossenen Monitore aus.

## Description

Verwendet Windows-API-Aufrufe, um ein Ausschaltsignal an alle angeschlossenen Monitore zu senden. Dies entspricht dem Drücken des physischen Netzschalters an Ihren Monitoren. Die Monitore wechseln in den Energiesparmodus, können aber durch Bewegen der Maus oder Drücken einer Taste wieder aktiviert werden.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Schaltet alle angeschlossenen Monitore aus.

### Example 2

```powershell
poweroff
```

Schaltet alle angeschlossenen Monitore mit dem Alias aus.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
