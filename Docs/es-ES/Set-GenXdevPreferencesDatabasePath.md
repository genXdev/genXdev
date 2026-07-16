# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
