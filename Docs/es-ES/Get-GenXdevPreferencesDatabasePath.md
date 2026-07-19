# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene la ruta de la base de datos configurada para los archivos de datos de preferencias utilizados en las operaciones de GenXdev.Data.

## Description

* Recupera la ruta global de la base de datos utilizada por el módulo GenXdev.Data para
  diversas operaciones de almacenamiento de preferencias y datos.
* Verifica primero las variables Globales (a menos que se especifique SkipSession), luego
  recurre a las preferencias persistentes y, finalmente, utiliza los valores predeterminados del sistema.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Anulación opcional de la ruta de la base de datos |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

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

Omite la variable de sesión y utiliza preferencias persistentes.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Limpia la configuración de la sesión antes de recuperar la ruta.

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
