# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina los conjuntos de refactorización del sistema de preferencias de GenXdev.

## Description

Gestiona los conjuntos de refactorización en el sistema de preferencias de GenXdev eliminando las entradas especificadas. Funciona tanto con conjuntos de refactorización personalizados como predeterminados. Los conjuntos predeterminados están protegidos a menos que se permita explícitamente su eliminación. Todos los conjuntos de refactorización se identifican mediante el prefijo "refactor_set_" en el sistema de preferencias.

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the refactor, accepts wildcards 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | Switch to also remove the standard refactor set |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | El valor predeterminado si no se encuentra la preferencia |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
