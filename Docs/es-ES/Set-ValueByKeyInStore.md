# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> Gestiona pares clave-valor en un almacén basado en archivos JSON.

## Description

Proporciona almacenamiento persistente para pares clave-valor usando archivos JSON. Maneja tanto la inserción de nuevas entradas como la actualización de las existentes. Admite sincronización opcional para almacenes no locales. Esta función implementa una operación de upsert que inserta nuevos pares clave-valor o actualiza los existentes según la combinación de clave de sincronización, nombre del almacén y nombre de la clave.

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

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Establece un endpoint de API en el ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Usa el alias para establecer un valor.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
