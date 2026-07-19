# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> Recupera los nombres de los almacenes de clave-valor disponibles.

## Description

* Escanea el directorio de almacenes clave-valor en busca de archivos JSON y extrae nombres de almacenes únicos basados en el patrón de clave de sincronización especificado.
* Asegura que el directorio de almacenes exista y sincroniza almacenes no locales si es necesario.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Clave para identificar el ámbito de sincronización, por defecto todos |
| `-DatabasePath` | String | — | — | Named | — | Ruta de la base de datos para archivos de datos de almacén clave-valor |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Obtiene todos los nombres de tienda de la ubicación predeterminada.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Recupera los nombres de las tiendas para el ámbito de sincronización 'Local'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Recupera todos los nombres de tiendas de una ruta de base de datos personalizada usando el alias.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
