# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
