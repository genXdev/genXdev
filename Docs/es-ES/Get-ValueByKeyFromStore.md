# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> Recupera un valor de un almacén de clave-valor basado en JSON.

## Description

* Recupera un valor para una clave especificada de un almacén de clave-valor basado en archivos JSON.
* Admite valores predeterminados opcionales y sincronización entre diferentes ámbitos.
* Proporciona inicialización automática de directorios y sincronización.

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nombre de la tienda para recuperar la clave |
| `-KeyName` | String | ✅ | — | 1 | — | Clave para recuperar del almacén especificado |
| `-DefaultValue` | String | — | — | 2 | — | Un valor predeterminado opcional |
| `-SynchronizationKey` | String | — | — | 3 | — | Clave para identificar el alcance de la sincronización |
| `-DatabasePath` | String | — | — | Named | — | Ruta de la base de datos para archivos de datos de almacén clave-valor |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Recupera el valor de "Theme" de "AppSettings", devolviendo "Dark" si no se encuentra.

### Example 2

```powershell
getvalue AppSettings Theme
```

Utiliza el alias 'getvalue' para recuperar un valor.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
