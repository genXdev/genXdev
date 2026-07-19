# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> Actualiza los metadatos de la imagen con descripciones y palabras clave generadas por IA.

## Description

La función Invoke-ImageKeywordUpdate analiza imágenes mediante inteligencia artificial para generar descripciones, palabras clave y otros metadatos. Crea un archivo JSON complementario para cada imagen que contiene esta información. La función puede procesar solo imágenes nuevas o actualizar metadatos existentes, y admite el escaneo recursivo de directorios.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Las rutas de directorio que contienen imágenes para procesar |
| `-Recurse` | SwitchParameter | — | — | Named | — | Procesar imágenes en el directorio especificado y todos los subdirectorios |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Reintentará las actualizaciones de palabras clave de imagen que fallaron anteriormente |
| `-Language` | String | — | — | Named | — | El idioma para las descripciones y palabras clave generadas |
| `-FacesDirectory` | String | — | — | Named | — | El directorio que contiene imágenes de rostros organizadas por carpetas de personas. Si no se especifica, utiliza la preferencia de directorio de rostros configurada. |
| `-Instructions` | String | — | — | 2 | — | Instrucciones del sistema para el modelo |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Nivel de detalle de la imagen |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants me to include the model's thoughts in the output. The original instruction was to translate text to es-ES while preserving structure, but now they want me to output JSON with thoughts. I need to follow the JSON schema strictly, so I will include a 'thoughts' field in the response object.

First, I analyze the input: no input text is provided, so I assume the task is to describe or think about the translation. Since the instruction says 'Include model's thoughts in output', I will create a response that contains a thought process.

The output must be valid JSON according to the schema. The schema requires a 'response' property of type string. I can put a string that contains a JSON object with thoughts. That way, the 'response' string is itself a JSON representation of my thoughts. For example: '{"thoughts": "I think the user wants..."}'.

Let me prepare the response.",
  "translation": "No input text provided for translation."
} |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | Especifica las funciones a utilizar para la operación de IA. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Especifica los cmdlets expuestos para la operación de IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Especifica los nombres de las funciones de herramienta que no requieren confirmación. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Si se especifica, desactiva el uso del contexto. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas de herramientas. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru para devolver objetos estructurados en lugar de enviarlos a la consola |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecta cambios en el directorio de rostros y vuelve a registrar los rostros si es necesario |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
