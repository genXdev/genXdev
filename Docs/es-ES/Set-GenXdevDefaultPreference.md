# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> Establece un valor de preferencia predeterminado en el almacén de preferencias de GenXdev.

## Description

* Gestiona las preferencias predeterminadas en el sistema de preferencias de GenXdev.
* Maneja el almacenamiento de valores, la eliminación de preferencias cuando los valores están vacíos y
  garantiza que los cambios se sincronicen en todo el sistema.
* Admite valores nulos eliminando la preferencia por completo en tales casos.

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

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Establece la preferencia de tema predeterminada en "Oscuro".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Utiliza el alias para deshabilitar las notificaciones por correo electrónico en los valores predeterminados.

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
