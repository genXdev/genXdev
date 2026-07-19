# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt de Windows weergaveschaalfactor (DPI-instelling) op voor een opgegeven monitor.

## Description

* Haalt de huidige Windows-weergaveschaalfactor op die is geconfigureerd voor een monitor in het systeem.
* De schaalfactor wordt uitgedrukt als een percentage waarbij 100 staat voor standaardschaling (96 DPI). Veelvoorkomende waarden zijn 100, 125, 150 en 200.
* Als er geen monitor is opgegeven, wordt de schaalfactor voor het primaire beeldscherm geretourneerd.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | De monitorindex om te controleren (0 = primaire monitor) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

Retourneert het schalingsfactorpercentage voor de primaire monitor.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

Retourneert het schaalpercentage voor de tweede monitor met behulp van een positionele parameter.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
