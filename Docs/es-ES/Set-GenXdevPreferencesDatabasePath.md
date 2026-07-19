# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Establece la ruta de la base de datos para las preferencias utilizadas en las operaciones de GenXdev.Data.

## Description

* Configura la ruta de base de datos global utilizada por el módulo GenXdev.Data para
  diversas operaciones de almacenamiento de preferencias y datos.
* La configuración se almacena en la sesión actual (usando variables globales) y
  se puede limpiar de la sesión (usando -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Una ruta de base de datos donde se ubican los archivos de datos de preferencia |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Cuando se especifica, almacena la configuración solo en la sesión actual (variable global) sin persistir en las preferencias |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Cuando se especifica, borra solo el ajuste de sesión (variable global) sin afectar las preferencias persistentes. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Establece la ruta de la base de datos en la sesión actual (variable global).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Establece la ruta de la base de datos usando un parámetro posicional.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Establece la ruta solo para la sesión actual sin persistirla.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Limpia la variable global de la ruta de la base de datos.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
