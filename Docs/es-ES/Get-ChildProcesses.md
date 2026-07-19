# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera todos los procesos que son descendientes del proceso actual de PowerShell.

## Description

* Examina todos los procesos en ejecución e identifica aquellos que tienen el proceso actual de PowerShell como un ancestro en su cadena de procesos padre.
* Esto incluye tanto procesos hijos directos como sus descendientes (nietos, etc.).

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Obtener todos los procesos secundarios de la sesión actual de PowerShell.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

Obtener procesos hijos con salida detallada que muestre información detallada de detección de procesos.

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
