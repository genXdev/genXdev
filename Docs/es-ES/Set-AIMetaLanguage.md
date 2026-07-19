# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Establece el idioma predeterminado y opcionalmente los directorios de imágenes para las operaciones de metadatos de imágenes de GenXdev.AI.

## Description

Esta función configura el idioma predeterminado global para las operaciones de metadatos de imagen en el módulo GenXdev.AI. Opcionalmente, también puede establecer los directorios de imágenes globales. Ambas configuraciones se persisten en el almacenamiento de preferencias del módulo para su uso en todas las sesiones.

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | El idioma predeterminado para las operaciones de metadatos de imagen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

Establece los directorios de idioma e imágenes de forma persistente en las preferencias.

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

Establece el idioma de forma persistente en las preferencias.

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

Establece el idioma solo para la sesión actual (variable global).

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

Borra la configuración de idioma de la sesión (variable global) sin afectar las preferencias persistentes.

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
