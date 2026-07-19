# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> Elimina una clave de un almacén de clave-valor.

## Description

Esta función elimina una clave específica de un almacén de clave-valor con nombre. Para almacenes locales, la clave se elimina permanentemente. Para almacenes sincronizados, la clave se marca como eliminada para permitir la sincronización.

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

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Elimina la clave "MyKey" del almacén "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Elimina una clave usando el alias.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
