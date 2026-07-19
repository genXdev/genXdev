# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> Guarda imágenes de rostros recortadas de los resultados de búsqueda de imágenes indexadas.

## Description

Esta función toma los resultados de búsqueda de imágenes y extrae/guarda regiones faciales individuales como archivos de imagen separados. Puede buscar caras utilizando varios criterios y guardarlas en un directorio de salida especificado. La función admite la búsqueda por descripción, palabras clave, personas, objetos, escenas, tipo de imagen, tipo de estilo y estado de ánimo general. También puede filtrar por desnudez y contenido explícito.

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Coincidirá con cualquiera de todos los posibles tipos de metadatos. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | El texto de descripción a buscar, se permiten comodines. |
| `-Keywords` | String[] | — | — | Named | `@()` | Las palabras clave a buscar, se permiten comodines. |
| `-People` | String[] | — | — | Named | `@()` | Personas a buscar, se permiten comodines. |
| `-Objects` | String[] | — | — | Named | `@()` | Objetos a buscar, se permiten comodines. |
| `-Scenes` | String[] | — | — | Named | `@()` | Scenas para buscar, se permiten comodines. |
| `-PictureType` | String[] | — | — | Named | `@()` | Tipos de imagen para filtrar, se aceptan caracteres comodín. |
| `-StyleType` | String[] | — | — | Named | `@()` | Tipos de estilo para filtrar, se permiten comodines. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Estados de ánimo generales para filtrar, se permiten comodines. |
| `-DatabaseFilePath` | String | — | — | Named | — | Ruta al archivo de base de datos SQLite. |
| `-Language` | String | — | — | Named | — | Idioma para descripciones y palabras clave. |
| `-PathLike` | String[] | — | — | Named | `@()` | Array de cadenas de búsqueda similares a rutas de directorio para filtrar imágenes por ruta (patrones LIKE de SQL, p. ej. '%\\2024\\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Acepta los resultados de búsqueda de una llamada -PassThru anterior para regenerar la vista. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Directorio para guardar imágenes de rostros recortados. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filtrar imágenes que contengan desnudez. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filtrar imágenes que NO contengan desnudos. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Forzar reconstrucción de la base de datos del índice de imágenes. |
| `-GeoLocation` | Double[] | — | — | Named | — | Coordenadas geográficas [latitud, longitud] para buscar cerca. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Distancia máxima en metros desde la ubicación geográfica para buscar imágenes. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Also save unknown persons detected as objects. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
