# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> Quita un valor de preferencia del almacén de preferencias de GenXdev.

## Description

* Elimina un valor de preferencia del almacén local y, opcionalmente, del almacén predeterminado.
* Proporciona dos conjuntos de parámetros: uno para la eliminación solo local y otro para eliminar tanto del almacén local como del predeterminado.
* Garantiza una sincronización adecuada al modificar el almacén predeterminado.

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | El nombre de la preferencia que se va a eliminar |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Cambie también para eliminar la preferencia de los valores predeterminados |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizar configuraciones alternativas almacenadas en la sesión para las preferencias de datos, como idioma, rutas de bases de datos, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Borrar la configuración de la sesión (variable global) antes de recuperarla |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No usar configuraciones alternativas almacenadas en la sesión para preferencias de Data como Idioma, rutas de bases de datos, etc. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Elimina la preferencia "Tema" solo del almacén local.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Elimina la preferencia "Theme" tanto de los almacenes locales como predeterminados.

## Parameter Details

### `-Name <String>`

> El nombre de la preferencia que se va a eliminar

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> Cambie también para eliminar la preferencia de los valores predeterminados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-PreferencesDatabasePath <String>`

> Ruta de base de datos para archivos de datos de preferencias

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreferencesDatabasePath.md)
