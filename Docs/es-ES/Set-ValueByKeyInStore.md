# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nombre de la tienda para el par clave-valor |
| `-KeyName` | String | ✅ | — | 1 | — | Nombre de la clave a configurar o actualizar |
| `-Value` | String | — | — | 2 | — | Valor a almacenar |
| `-SynchronizationKey` | String | — | — | 3 | — | Clave para identificar el alcance de la sincronización |
| `-DatabasePath` | String | — | — | Named | — | Ruta de la base de datos para archivos de datos de almacén clave-valor |

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
