# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Elimina un almacén de clave-valor.

## Description

Esta función elimina un almacén de clave-valor especificado. Para los almacenes locales, elimina físicamente el archivo. Para los almacenes sincronizados, marca todas las claves como eliminadas y desencadena la sincronización.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nombre de la tienda a eliminar |
| `-SynchronizationKey` | String | — | — | 1 | — | Clave para identificar el alcance de la sincronización |
| `-DatabasePath` | String | — | — | Named | — | Ruta de la base de datos para archivos de datos de almacén clave-valor |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Elimina un almacén de clave-valor local llamado "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Eliminar una tienda sincronizada con una clave de sincronización específica.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
