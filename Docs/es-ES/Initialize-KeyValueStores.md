# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Inicializa la estructura de directorios de KeyValueStore para el almacenamiento local y en OneDrive.

## Description

Crea la estructura de directorios para almacenes de clave-valor basados en JSON en dos ubicaciones: máquina local para acceso inmediato y carpeta de OneDrive para sincronización en la nube. El cmdlet se asegura de que ambos directorios existan y estén configurados correctamente.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Ruta de la base de datos para los archivos de datos del almacén de clave-valor |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Crea los directorios locales y de OneDrive estándar para los almacenes de pares clave-valor.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Crea directorios de almacenamiento de pares clave-valor bajo la ruta personalizada especificada.

## Parameter Details

### `-DatabasePath <String>`

> Ruta de la base de datos para los archivos de datos del almacén de clave-valor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Sync-KeyValueStore.md)
