# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Inicializa la estructura de directorios de KeyValueStore para almacenamiento local y en OneDrive.

## Description

Crea una estructura de directorios para almacenes de clave-valor basados en JSON en dos ubicaciones: la máquina local para acceso inmediato y la carpeta de OneDrive para sincronización en la nube. El cmdlet asegura que ambos directorios existan y estén configurados correctamente.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Ruta de la base de datos para archivos de datos de almacén clave-valor |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Crea los directorios locales estándar y de OneDrive para almacenes de clave-valor.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Crea directorios de almacenes clave-valor bajo la ruta personalizada especificada.

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)
