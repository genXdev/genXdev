# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Recupera los nombres de los almacenes de clave-valor disponibles.

## Description

* Escanea el directorio de almacenamiento de pares clave-valor en busca de archivos JSON y extrae nombres de almacenes únicos basados en el patrón de clave de sincronización especificado.
* Asegura que el directorio de almacenamiento exista y sincroniza los almacenes no locales si es necesario.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Clave para identificar el alcance de la sincronización, el valor predeterminado es todo |
| `-DatabasePath` | String | — | — | Named | — | Ruta de la base de datos para los archivos de datos del almacén de clave-valor |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Recupera todos los nombres de tienda de la ubicación predeterminada.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Recupera los nombres de tiendas para el ámbito de sincronización 'Local'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Recupera todos los nombres de tienda de una ruta de base de datos personalizada mediante el alias.

## Parameter Details

### `-SynchronizationKey <String>`

> Clave para identificar el alcance de la sincronización, el valor predeterminado es todo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Ruta de la base de datos para los archivos de datos del almacén de clave-valor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Sync-KeyValueStore.md)
