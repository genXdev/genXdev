# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene la ruta del archivo para un almacén de clave-valor.

## Description

* Construye la ruta del archivo para un almacén de clave-valor basado en la clave de sincronización, nombre del almacén y directorio base.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | La clave de sincronización utilizada para identificar la tienda |
| `-StoreName` | String | ✅ | — | 1 | — | El nombre del almacén de clave-valor |
| `-BasePath` | String | — | — | Named | — | La ruta del directorio base para almacenar archivos |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Obtenga la ruta para un almacén de clave-valor local.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
