# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> Obtiene todos los nombres de preferencias del almacenamiento de sesión y de las bases de datos.

## Description

* Recupera una lista única de nombres de preferencias combinando claves de
  almacenamiento de sesión (variables globales) y las tiendas de preferencias
  local y predeterminada.
* Respeta los parámetros de gestión de sesión para controlar qué fuentes se
  consultan.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Devuelve un array ordenado de nombres de preferencias únicos del almacenamiento de sesión y ambas tiendas utilizando la ruta de base de datos especificada.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Devuelve solo los nombres de preferencias del almacenamiento de sesión.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Devuelve solo los nombres de preferencias de las tiendas de la base de datos.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
