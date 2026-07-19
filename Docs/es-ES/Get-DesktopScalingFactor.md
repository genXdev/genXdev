# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera el factor de escala de visualización de Windows (configuración de DPI) para un monitor específico.

## Description

* Obtiene el factor de escala de visualización de Windows configurado para un monitor en el sistema.
* El factor de escala se expresa como un porcentaje donde 100 representa la escala estándar (96 DPI). Los valores comunes son 100, 125, 150 y 200.
* Si no se especifica ningún monitor, devuelve el factor de escala para la pantalla principal.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | El índice del monitor a verificar (0 = monitor principal) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

Devuelve el porcentaje del factor de escala para el monitor principal.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

Devuelve el porcentaje del factor de escala para el segundo monitor usando un parámetro posicional.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
