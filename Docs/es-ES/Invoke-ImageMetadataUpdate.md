# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Array of directory paths to process for image metadata updates |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Reintentará las actualizaciones de metadatos de imágenes que fallaron anteriormente |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have metadata files |
| `-Recurse` | SwitchParameter | — | — | Named | — | Si se especifica, procesa imágenes en subdirectorios de forma recursiva |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar la reconstrucción de metadatos incluso si ya existen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return structured objects instead of outputting to console |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No use configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
