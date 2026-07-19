# Get-MagnificationByObjectDistanceAndImageDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates magnification for a lens.

## Description

Uses m = - (image distance / object distance).

## Syntax

```powershell
Get-MagnificationByObjectDistanceAndImageDistance [-ObjectDistanceInMeters] <double> [-ImageDistanceInMeters] <double> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ObjectDistanceInMeters` | Double | ✅ | — | 0 | `0` | Object distance in meters |
| `-ImageDistanceInMeters` | Double | ✅ | — | 1 | `0` | Image distance in meters |

## Examples

### Example 1

```powershell
Get-MagnificationByObjectDistanceAndImageDistance -ObjectDistanceInMeters 0.5 -ImageDistanceInMeters 1
```

Calculates magnification with object distance 0.5m and image distance 1m.

### Example 2

```powershell
Get-MagnificationByObjectDistanceAndImageDistance 0.3 0.6
```

Calculates magnification using positional parameters.

## Related Links

- [Get-MagnificationByObjectDistanceAndImageDistance on GitHub](https://github.com/genXdev/genXdev)
