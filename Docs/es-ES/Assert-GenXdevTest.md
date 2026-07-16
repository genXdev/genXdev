# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Patrón de búsqueda para filtrar cmdlets 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Acción a tomar cuando falla una prueba. Opciones: Ask, Continue, Stop, SolveWithAI, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | Expresión regular para definir definiciones de cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | Nombres de módulos GenXdev a buscar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Omitir la búsqueda en rutas de módulos locales |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Buscar solo en rutas de módulos publicados |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Buscar en archivos de script en lugar de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Incluye el directorio scripts además de los módulos regulares *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Requiere coincidencias exactas para los nombres de cmdlet |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Nivel de detalle de salida |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Nivel de detalle del seguimiento de pila |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | También selecciona pruebas unitarias que tienen largas duraciones de ejecución |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Omite la importación de los módulos GenXdev antes de las pruebas *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Omite la ejecución de las pruebas de PSAnalyzer |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Omite la ejecución de pruebas Pester |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
