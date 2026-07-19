# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> Recupera un valor de preferencia del almacén de preferencias de GenXdev.

## Description

* Implementa un sistema de recuperación de preferencias de dos niveles.
* Primero verifica si hay un valor de preferencia en el almacenamiento local.
* Si no se encuentra, recurre al almacenamiento predeterminado.
* Si aún no se encuentra, devuelve el valor predeterminado proporcionado.

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | El nombre de la preferencia a recuperar |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | El valor predeterminado si no se encuentra la preferencia |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Recupera la preferencia "Tema" con valor por defecto "Oscuro".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Utiliza el alias y los parámetros posicionales.

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
