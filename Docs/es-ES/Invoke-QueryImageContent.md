# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | La cadena de consulta para analizar la imagen |
| `-ImagePath` | String | ✅ | — | 1 | — | Ruta al archivo de imagen para el análisis |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperature for audio response generation. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la generación de respuestas. |
| `-Language` | String | — | — | Named | — | El idioma para las descripciones y palabras clave generadas |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar. |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir la salida. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para el procesamiento de audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias. |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para el filtrado de salida. |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Si se especifica, no hables en voz alta la salida. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Si se especifica, no hables los pensamientos del modelo. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Si se especifica, desactiva VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Si se especifica, usa la captura de audio del escritorio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Si se especifica, desactiva el uso del contexto. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | If specified, use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | { "type": "json_schema", "json_schema": { "name": "text_transformation_response", "strict": true, "schema": { "required": ["response"], "properties": { "response": { "type": "string", "description": "The transformed text output" } }, "type": "object" } } } |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Si se especifica, no agregues pensamientos al historial. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue the last conversation. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habla la salida. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | The model's thoughts are not yet spoken. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ¡Por supuesto! Aquí tienes un ejemplo de código en Python que imprime "Hola, mundo". |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Si se especifica, solo chatea una vez. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Deshabilitar el almacenamiento en caché de sesión. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas de herramientas. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for ImageSharp package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Aceptar automáticamente la instalación de software de terceros y establecer el indicador persistente para los paquetes ImageSharp. |

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)
