# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft die Gesamtzahl der am System angeschlossenen Bildschirme ab.

## Description

* Verwendet die Windows Presentation Foundation (WPF) Screen-Hilfsklasse, um
  die Anzahl der aktuell an das System angeschlossenen physischen Anzeigemonitore
  genau zu ermitteln.
* Dies umfasst sowohl aktive als auch erkannte, aber deaktivierte Monitore.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Gibt die Gesamtzahl der angeschlossenen Monitore zurück (z.B. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Gibt die Monitoranzahl mit ausführlicher Ausgabe zurück, die den Erkennungsprozess zeigt.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-CpuAvx.md)
