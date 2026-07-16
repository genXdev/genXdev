# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nombre de la tienda |
| `-KeyName` | String | ✅ | — | 1 | — | Llave a eliminar |
| `-SynchronizationKey` | String | — | — | 2 | — | Clave para identificar el alcance de la sincronización |
| `-DatabasePath` | String | — | — | Named | — | Ruta de la base de datos para archivos de datos de almacén clave-valor |

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
