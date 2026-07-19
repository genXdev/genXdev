# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> Elimina archivos de metadatos de imágenes de los directorios de imágenes.

## Description

La función Remove-ImageMetaData elimina los archivos de metadatos JSON complementarios que están asociados con imágenes. Puede eliminar de forma selectiva solo palabras clave (description.json), datos de personas (people.json), datos de objetos (objects.json) o datos de escenas (scenes.json), o eliminar todos los archivos de metadatos si no se proporciona ningún modificador específico. Los archivos de metadatos específicos de un idioma se pueden eliminar especificando el parámetro Language, y todas las variantes de idioma se pueden eliminar mediante el modificador AllLanguages.

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | Array de rutas de directorios para procesar la eliminación de metadatos de imágenes. Si no se especifica, usa los directorios predeterminados del sistema. |
| `-Language` | String | — | — | 1 | — | El lenguaje para eliminar archivos de metadatos específicos del idioma. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Ruta de base de datos para archivos de datos de preferencias |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recurse directorios. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Only remove people.json files (face recognition data). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Elimina solo los archivos objects.json (datos de detección de objetos). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Only remove scenes.json files (scene classification data). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Remove metadata files for all supported languages. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Elimina todos los archivos de metadatos de imágenes en múltiples directorios y todos los subdirectorios.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Elimina únicamente los archivos description.json de los directorios y subdirectorios predeterminados del sistema.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Elimina solo los archivos people.json del directorio MyPhotos.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Elimina recursivamente los archivos de descripción en inglés y español de los directorios predeterminados.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Utiliza alias para eliminar archivos de palabras clave de todos los idiomas compatibles.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
