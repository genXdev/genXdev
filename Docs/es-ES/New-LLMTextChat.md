# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Texto de consulta para enviar al modelo *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | Instrucciones del sistema para el modelo |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de rutas de archivos a adjuntar |
| `-Temperature` | Double | — | — | 3 | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Solo generará bloques de marcado de los tipos especificados |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants me to include the model's thoughts in the output. The original instruction was to translate text to es-ES while preserving structure, but now they want me to output JSON with thoughts. I need to follow the JSON schema strictly, so I will include a 'thoughts' field in the response object.

First, I analyze the input: no input text is provided, so I assume the task is to describe or think about the translation. Since the instruction says 'Include model's thoughts in output', I will create a response that contains a thought process.

The output must be valid JSON according to the schema. The schema requires a 'response' property of type string. I can put a string that contains a JSON object with thoughts. That way, the 'response' string is itself a JSON representation of my thoughts. For example: '{"thoughts": "I think the user wants..."}'.

Let me prepare the response.",
  "translation": "No input text provided for translation."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants me to include the model's thoughts in the output. The original instruction was to translate text to es-ES while preserving structure, but now they want me to output JSON with thoughts. I need to follow the JSON schema strictly, so I will include a 'thoughts' field in the response object.

First, I analyze the input: no input text is provided, so I assume the task is to describe or think about the translation. Since the instruction says 'Include model's thoughts in output', I will create a response that contains a thought process.

The output must be valid JSON according to the schema. The schema requires a 'response' property of type string. I can put a string that contains a JSON object with thoughts. That way, the 'response' string is itself a JSON representation of my thoughts. For example: '{"thoughts": "I think the user wants..."}'.

Let me prepare the response.",
  "translation": "No input text provided for translation."
} |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ¿Qué deseas hacer a continuación? |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilita la conversión de texto a voz para las respuestas de pensamiento de la IA |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Usado internamente, para invocar el modo de chat solo una vez después de la invocación del llm *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenes la sesión en la caché de sesiones |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Names of tool functions that should not require confirmation |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum length for tool callback responses |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatura para la generación de audio |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatura para generación de respuesta |
| `-Language` | Object | — | — | Named | — | Idioma para el modelo o salida |
| `-CpuThreads` | Object | — | — | Named | — | Número de hilos de CPU a utilizar |
| `-SuppressRegex` | Object | — | — | Named | — | Expresión regular para suprimir salida |
| `-AudioContextSize` | Object | — | — | Named | — | Tamaño del contexto de audio para el procesamiento |
| `-SilenceThreshold` | Object | — | — | Named | — | Silence threshold for audio processing |
| `-LengthPenalty` | Object | — | — | Named | — | Penalización por longitud para la generación de secuencias |
| `-EntropyThreshold` | Object | — | — | Named | — | Umbral de entropía para el filtrado de salida |
| `-LogProbThreshold` | Object | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Sin umbral de voz para la detección de audio |
| `-DontSpeak` | Object | — | — | Named | — | Desactivar salida de voz |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | Object | — | — | Named | — | Desactivar VOX (activación por voz) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Usar captura de audio de escritorio |
| `-NoContext` | Object | — | — | Named | — | Deshabilitar uso de contexto |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use beam search sampling strategy |
| `-OnlyResponses` | Object | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)
