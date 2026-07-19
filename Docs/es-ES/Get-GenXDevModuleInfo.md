# Get-GenXDevModuleInfo

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera información detallada sobre los módulos de PowerShell de GenXdev.

## Description

Esta función examina los módulos de PowerShell de GenXdev y devuelve información sobre su configuración, versiones y presencia de archivos clave. Puede procesar módulos específicos o todos los módulos disponibles.

## Syntax

```powershell
Get-GenXDevModuleInfo [[-ModuleName] <String[]>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | Nombres de módulos a analizar |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"

```powershell
Get-GenXDevModuleInfo -ModuleName "GenXdev.Console"
```

### "GenXdev.Console" | Get-GenXDevModuleInfo

```powershell
"GenXdev.Console" | Get-GenXDevModuleInfo
```

## Related Links

- [Get-GenXDevModuleInfo on GitHub](https://github.com/genXdev/genXdev)
