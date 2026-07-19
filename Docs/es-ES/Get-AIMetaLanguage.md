# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> Obtiene el idioma predeterminado configurado para las operaciones de metadatos de imagen.

## Description

* Este cmdlet recupera el idioma predeterminado utilizado por el módulo GenXdev.AI
  para operaciones de metadatos de imagen.
* Primero verifica las variables globales (a menos que se especifique SkipSession), luego
  recurre a las preferencias persistentes y, finalmente, usa los valores predeterminados del sistema.

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | El idioma predeterminado para las operaciones de metadatos de imagen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

Obtén el idioma configurado actualmente desde las variables globales o preferencias.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

Obtener el idioma configurado de las preferencias persistentes, ignorando la sesión.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

Borra la configuración de sesión y obtén el idioma de las preferencias persistentes.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
