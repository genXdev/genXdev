# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Inicializa y configura las rutas de búsqueda del sistema para la gestión de paquetes.

## Description

* Construye una lista completa de rutas de búsqueda combinando ubicaciones predeterminadas del sistema, rutas de Chocolatey, rutas de herramientas de desarrollo y rutas de paquetes personalizados.
* Actualiza la variable de entorno PATH del sistema con estas rutas consolidadas.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | La ruta de la carpeta del espacio de trabajo que se usará para los módulos de Node y las rutas de PowerShell. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Inicializa las rutas de búsqueda usando la carpeta de espacio de trabajo predeterminada.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Inicializa las rutas de búsqueda usando una carpeta de espacio de trabajo específica.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
