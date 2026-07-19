# Get-MagnificationByObjectDistanceAndImageDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de vergroting voor een lens.

## Description

Gebruikt m = - (beeldafstand / voorwerpafstand).

## Syntax

```powershell
Get-MagnificationByObjectDistanceAndImageDistance [-ObjectDistanceInMeters] <double> [-ImageDistanceInMeters] <double> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ObjectDistanceInMeters` | Double | ✅ | — | 0 | `0` | Objectafstand in meters |
| `-ImageDistanceInMeters` | Double | ✅ | — | 1 | `0` | Afstand tot het beeld in meters |

## Examples

### Example 1

```powershell
Get-MagnificationByObjectDistanceAndImageDistance -ObjectDistanceInMeters 0.5 -ImageDistanceInMeters 1
```

Berekent vergroting met objectafstand 0.5m en beeldafstand 1m.

### Example 2

```powershell
Get-MagnificationByObjectDistanceAndImageDistance 0.3 0.6
```

Berekent de vergroting met behulp van positieparameters.

## Related Links

- [Get-MagnificationByObjectDistanceAndImageDistance on GitHub](https://github.com/genXdev/genXdev)
