# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> Updates object detection metadata for image files in a specified directory.

## Description

Esta función procesa imágenes en un directorio especificado para detectar objetos mediante inteligencia artificial. Crea archivos de metadatos JSON que contienen los objetos detectados, sus posiciones, puntuaciones de confianza y etiquetas. La función admite procesamiento por lotes con umbrales de confianza configurables y puede optar por omitir archivos de metadatos existentes o reintentar detecciones fallidas anteriores.

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Las rutas de directorio que contienen imágenes para procesar |
| `-Recurse` | SwitchParameter | — | — | Named | — | Procesar imágenes en el directorio especificado y todos los subdirectorios |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Reintentará las actualizaciones de palabras clave de imagen que fallaron anteriormente |
| `-Language` | String | — | — | Named | — | El idioma para las descripciones y palabras clave generadas |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

Este ejemplo procesa todas las imágenes en C:\Photos y D:\Pictures y todos los subdirectorios usando la configuración predeterminada con un umbral de confianza de 0.5.

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

Este ejemplo procesa solo imágenes nuevas y reintenta las que fallaron anteriormente en múltiples directorios usando sintaxis de parámetros posicionales.

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

Este ejemplo utiliza aceleración por GPU con un umbral de confianza más alto de 0.7 para detecciones de objetos más precisas pero menos numerosas.

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
