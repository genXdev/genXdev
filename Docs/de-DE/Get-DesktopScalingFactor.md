# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft den Windows-Anzeigeskalierungsfaktor (DPI-Einstellung) für einen angegebenen Monitor ab.

## Description

* Ruft den aktuellen Windows-Anzeige-Skalierungsfaktor ab, der für einen Monitor im System konfiguriert ist.
* Der Skalierungsfaktor wird als Prozentsatz angegeben, wobei 100 für die Standardskalierung (96 DPI) steht. Übliche Werte sind 100, 125, 150 und 200.
* Wenn kein Monitor angegeben ist, wird der Skalierungsfaktor für das primäre Display zurückgegeben.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | Der zu prüfende Monitorindex (0 = primärer Monitor) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

Gibt den Skalierungsfaktor in Prozent für den primären Monitor zurück.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

Gibt den Skalierungsfaktor in Prozent für den zweiten Monitor unter Verwendung eines Positionsparameters zurück.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
