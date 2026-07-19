# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> Recupera todos los nombres de clave para un almacén de clave-valor dado.

## Description

* Consulta el archivo JSON de KeyValueStore para recuperar todas las claves activas (no eliminadas) de un almacén especificado.
* Opcionalmente puede filtrar por ámbito de sincronización.
* Inicializa automáticamente la estructura de directorios si no se encuentra y gestiona la sincronización para almacenes no locales.

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nombre de la tienda cuyas claves se deben recuperar |
| `-SynchronizationKey` | String | — | — | 1 | — | Clave para identificar el ámbito de sincronización, por defecto todos |
| `-DatabasePath` | String | — | — | Named | — | Ruta de la base de datos para archivos de datos de almacén clave-valor |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Recupera todas las claves del almacén de configuración de la aplicación para el ámbito Local.

### Example 2

```powershell
getkeys AppSettings
```

Recupera las claves usando el alias.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
