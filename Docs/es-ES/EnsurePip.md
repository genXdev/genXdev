# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Garantiza que pip esté instalado y funcional para la instalación de Python especificada.

## Description

Verifica que pip esté disponible y funcione para el ejecutable de Python dado. Si pip no está disponible, intenta instalarlo usando ensurepip. Valida la funcionalidad de pip verificando la versión y operaciones básicas. Devuelve $true si pip está listo; lanza Write-Error en caso de fallo.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Ruta al ejecutable de Python |
| `-Timeout` | Int32 | — | — | Named | `300` | Tiempo de espera en segundos para la instalación de pip |
| `-Force` | SwitchParameter | — | — | Named | — | Fuerza la reinstalación/actualización de pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

Garantiza que pip esté disponible para la instalación predeterminada de Python.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

Forces pip installation for a specific Python executable.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

Asegura pip para una instalación específica de Python devuelta por EnsurePython.

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
