# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> Importa todos los módulos de PowerShell de GenXdev en el ámbito global.

## Description

Escanea el directorio padre en busca de módulos GenXdev e importa cada uno en el ámbito global. Utiliza la gestión de la pila de ubicaciones para preservar el directorio de trabajo y proporciona retroalimentación visual para importaciones exitosas y fallidas. Realiza un seguimiento de los cambios en el conteo de funciones durante el proceso de importación.

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | Activar salida de depuración para definiciones de módulos fallidas |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
