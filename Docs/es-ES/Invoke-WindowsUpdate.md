# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
