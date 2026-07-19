# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> Genera un informe detallado de las operaciones de refactorización y su estado.

## Description

Analiza e informa sobre el progreso de las operaciones de refactorización examinando su estado actual, estado de finalización y funciones afectadas. Proporciona salida en formato de tabla hash estructurada o columnas de texto alineadas legibles para humanos. El informe incluye nombre de refactorización, clave de prompt, prioridad, estado, número de funciones y porcentaje de finalización.

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the refactor, accepts wildcards 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Especifica la ruta al archivo de base de datos de preferencias. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | If set, only use the session cache for refactor data. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Si se establece, limpia la caché de sesión antes de ejecutar. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Si está configurado, omitir la carga de la caché de sesión. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Genera un informe de texto para las refactorizaciones que coinciden con "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Genera un informe de tabla hash para todas las refactorizaciones que usan alias.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
