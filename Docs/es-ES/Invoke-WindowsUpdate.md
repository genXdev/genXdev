# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Comprueba si Windows está actualizado y opcionalmente instala las actualizaciones disponibles.

## Description

Esta función comprueba las actualizaciones de Windows, las actualizaciones de paquetes de winget y las actualizaciones de módulos de PowerShell. Puede mostrar las actualizaciones disponibles o instalarlas automáticamente. La función requiere privilegios administrativos para instalar actualizaciones de Windows y puede reiniciar el sistema opcionalmente si las actualizaciones requieren un reinicio.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Instalar automáticamente las actualizaciones de Windows disponibles |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Reinicio automático si las actualizaciones requieren reinicio |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Criterio de búsqueda personalizado de Windows Update |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Incluir controladores en la búsqueda de actualizaciones |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Agrupar y colorear la salida por categoría de actualización |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Deshabilitar salida de banner/estado |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Omitir la verificación/informe de requisito de reinicio |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Comprueba las actualizaciones disponibles de Windows y winget sin instalarlas.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Instala automáticamente todas las actualizaciones disponibles de Windows y winget.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Instala todas las actualizaciones y reinicia automáticamente si es necesario usando el alias.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Muestra las actualizaciones disponibles agrupadas por categoría para una mejor organización.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Busca actualizaciones, incluidos controladores, con criterios de búsqueda personalizados.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
