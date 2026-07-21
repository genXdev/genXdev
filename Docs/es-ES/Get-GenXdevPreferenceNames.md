# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Obtiene todos los nombres de preferencia del almacenamiento de sesión y de las bases de datos.

## Description

* Recupera una lista única de nombres de preferencias combinando claves del
  almacenamiento de sesión (variables globales) y tanto el almacén de
  preferencias local como el predeterminado.
* Respeta los parámetros de gestión de sesión para controlar qué orígenes
  se consultan.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizar configuraciones alternativas almacenadas en la sesión para las preferencias de datos, como idioma, rutas de bases de datos, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Borrar la configuración de la sesión (variable global) antes de recuperarla |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No usar configuraciones alternativas almacenadas en la sesión para preferencias de Data como Idioma, rutas de bases de datos, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Devuelve una matriz ordenada de nombres de preferencias únicos del almacenamiento de sesión y ambas tiendas usando la ruta de base de datos especificada.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Devuelve solo los nombres de preferencias del almacenamiento de sesión.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Devuelve solo nombres de preferencias de los almacenes de bases de datos.

## Parameter Details

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
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreferencesDatabasePath.md)
