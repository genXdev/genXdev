# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> Valida el uso de dependencias entre módulos GenXdev para asegurar que se mantenga una jerarquía de módulos adecuada.

## Description

Esta función analiza los módulos de GenXdev para asegurarse de que siguen la jerarquía de dependencias correcta. Comprueba que los módulos solo hagan referencia a dependencias que estén listadas en su manifiesto de RequiredModules, y previene dependencias circulares verificando que los módulos no hagan referencia a módulos que aparecen más adelante en la cadena de dependencias.

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filtro para aplicar a nombres de módulos 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Búsqueda en archivos de script en lugar de archivos de módulo |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
