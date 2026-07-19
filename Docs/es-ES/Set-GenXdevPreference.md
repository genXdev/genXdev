# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> Establece un valor de preferencia en el almacén de preferencias de GenXdev.

## Description

* Gestiona las preferencias en el almacén local de GenXdev.
* Puede establecer nuevas preferencias, actualizar las existentes o eliminarlas cuando se proporciona un valor nulo/vacío.
* Las preferencias se almacenan con la sincronización configurada en "Local".

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | El nombre de la preferencia a establecer |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | El valor a almacenar para la preferencia |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Establece la preferencia "Tema" a "Oscuro" en el almacenamiento local.

### Example 2

```powershell
setPreference Theme Light
```

Utiliza el alias y los parámetros posicionales para establecer la preferencia de tema.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
