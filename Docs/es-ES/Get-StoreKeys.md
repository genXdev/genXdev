# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
