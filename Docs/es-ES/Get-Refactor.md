# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> Recupera definiciones de refactorización de las preferencias de GenXdev basadas en patrones de nombre.

## Description

Busca y carga los conjuntos de definiciones de refactorización almacenados en las preferencias de GenXdev. Cada conjunto de refactorización se almacena como una cadena JSON en una preferencia cuyo nombre comienza con 'refactor_set_'. La función deserializa los conjuntos coincidentes en objetos.

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Patrón(es) a buscar para definiciones de refactorización 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-DefaultValue` | String | — | — | Named | — | El valor predeterminado si no se encuentra la preferencia |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

## Examples

### Get-Refactor -Name "CodeStyle*" Returns refactor definitions matching pattern "CodeStyle*"

```powershell
Get-Refactor -Name "CodeStyle*"
Returns refactor definitions matching pattern "CodeStyle*"
```

### refactor "UnitTest" Uses alias to find refactor definitions containing "UnitTest"

```powershell
refactor "UnitTest"
Uses alias to find refactor definitions containing "UnitTest"
```

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)
