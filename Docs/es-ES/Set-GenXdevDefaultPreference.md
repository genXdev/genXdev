# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> Establece un valor de preferencia predeterminado en el almacén de preferencias de GenXdev.

## Description

* Administra las preferencias predeterminadas en el sistema de preferencias de GenXdev.
* Maneja el almacenamiento de valores, la eliminación de preferencias cuando los valores están vacíos y
  garantiza que los cambios se sincronicen en todo el sistema.
* Admite valores nulos eliminando la preferencia por completo en tales casos.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | El nombre de la preferencia a establecer en valores predeterminados |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | El valor que se va a almacenar para la preferencia |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizar configuraciones alternativas almacenadas en la sesión para las preferencias de datos, como idioma, rutas de bases de datos, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Borrar la configuración de la sesión (variable global) antes de recuperarla |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No usar configuraciones alternativas almacenadas en la sesión para preferencias de Data como Idioma, rutas de bases de datos, etc. |

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

Usa el alias para deshabilitar las notificaciones por correo electrónico en los valores predeterminados.

## Parameter Details

### `-Name <String>`

> El nombre de la preferencia a establecer en valores predeterminados

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> El valor que se va a almacenar para la preferencia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Ruta de base de datos para archivos de datos de preferencias

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Utilizar configuraciones alternativas almacenadas en la sesión para las preferencias de datos, como idioma, rutas de bases de datos, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Borrar la configuración de la sesión (variable global) antes de recuperarla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> No usar configuraciones alternativas almacenadas en la sesión para preferencias de Data como Idioma, rutas de bases de datos, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreferencesDatabasePath.md)
