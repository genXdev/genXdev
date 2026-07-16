# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | El nombre de la preferencia para establecer en los valores predeterminados |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | El valor a almacenar para la preferencia |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
