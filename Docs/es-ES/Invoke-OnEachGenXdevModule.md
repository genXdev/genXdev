# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> Ejecuta un bloque de script en cada módulo de GenXdev en el espacio de trabajo.

## Description

Esta función itera a través de los módulos de GenXdev en el espacio de trabajo y ejecuta un bloque de script proporcionado contra cada módulo. Puede filtrar módulos por patrón de nombre, excluir módulos locales, incluir solo módulos publicados o procesar scripts en lugar de módulos. La función navega automáticamente al directorio del módulo correcto antes de ejecutar el bloque de script.

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | El bloque de script a ejecutar para cada módulo de GenXdev |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filtro para aplicar a nombres de módulos 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Excluye los módulos de desarrollo local del procesamiento |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Incluye solo módulos publicados que tengan archivos LICENSE y README.md |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Procesar directorio de scripts en lugar de directorios de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Incluye el directorio scripts además de los módulos regulares |

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

Enlista todos los nombres de módulos de GenXdev.

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Utiliza el alias para listar el contenido del directorio del módulo GenXdev.AI.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
