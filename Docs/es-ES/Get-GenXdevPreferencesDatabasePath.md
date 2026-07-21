# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene la ruta de base de datos configurada para los archivos de datos de preferencia utilizados en operaciones de GenXdev.Data.

## Description

* Recupera la ruta de la base de datos global utilizada por el módulo GenXdev.Data para
  el almacenamiento de varias preferencias y operaciones de datos.
* Comprueba primero las variables globales (a menos que se especifique SkipSession),
  luego recurre a las preferencias persistentes y, finalmente, utiliza los valores predeterminados del sistema.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Invalidez opcional de la ruta de la base de datos |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilizar configuraciones alternativas almacenadas en la sesión para las preferencias de datos, como idioma, rutas de bases de datos, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Borrar la configuración de la sesión (variable global) antes de recuperarla |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No usar configuraciones alternativas almacenadas en la sesión para preferencias de Data como Idioma, rutas de bases de datos, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Recupera la ruta de la base de datos desde variables globales o preferencias.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Omite la variable de sesión y utiliza las preferencias persistentes.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Borra la configuración de la sesión antes de recuperar la ruta.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Invalidez opcional de la ruta de la base de datos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevPreferencesDatabasePath.md)
