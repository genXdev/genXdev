# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Garantiza que Python esté instalado y disponible en la RUTA del sistema.

## Description

Verifica que Python esté instalado y sea accesible a través del PATH del sistema. Si no se encuentra Python, intenta instalarlo usando winget (Administrador de paquetes de Windows). Admite requisitos de versión específicos y proporciona retroalimentación de progreso durante la instalación. Devuelve la ruta al ejecutable de Python si tiene éxito; lanza Write-Error en caso de fallo.

Esta función prioriza las instalaciones existentes de Python, pero puede forzar la reinstalación cuando sea necesario. Valida la funcionalidad de Python comprobando la salida de la versión y asegura que la instalación sea correctamente accesible.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | Versión de Python a asegurar que esté instalada |
| `-Timeout` | Int32 | — | — | Named | `600` | Tiempo de espera en segundos para la instalación de Python |
| `-Force` | SwitchParameter | — | — | Named | — | Fuerza la reinstalación de Python |

## Examples

### EnsurePython

```powershell
EnsurePython
```

Ensures Python 3.12 is installed using default settings.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Instala Python 3.11 con un tiempo de espera extendido y devuelve la ruta del ejecutable.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Forces reinstallation of Python 3.12 with detailed progress information.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

Forces installation of Python 3.10 even if another version exists.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
