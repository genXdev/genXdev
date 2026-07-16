# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | El script a ejecutar y analizar para errores |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | [Array of command names that don't require confirmation] |
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
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenes la sesión en la caché de sesiones |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object | — | — | Named | — | Adjuntos para incluir en la consulta LLM. |
| `-ImageDetail` | Object | — | — | Named | — | Level of image detail for LLM query. |
| `-TTLSeconds` | Object | — | — | Named | — | Tiempo de vida en segundos para la consulta LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | {
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
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | ```json
{"message": "Hello, World!"}
``` |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | {"type": "json_schema", "json_schema": {"name": "text_transformation_response", "strict": true, "schema": {"required": ["response"], "properties": {"response": {"type": "string", "description": "The transformed text output"}}, "type": "object"}}} |
| `-ChatOnce` | Object | — | — | Named | — | Esta es una respuesta de ejemplo |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Maximum tool call back length for LLM query. |
| `-AudioTemperature` | Object | — | — | Named | — | Temperatura para generación de audio. |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperatura para la generación de respuestas. |
| `-Language` | Object | — | — | Named | — | es-ES |
| `-CpuThreads` | Object | — | — | Named | — | Número de hilos de CPU a utilizar. |
| `-SuppressRegex` | Object | — | — | Named | — | Expresión regular para suprimir la salida. |
| `-AudioContextSize` | Object | — | — | Named | — | Tamaño del contexto de audio para la consulta LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Umbral de silencio para el procesamiento de audio. |
| `-LengthPenalty` | Object | — | — | Named | — | Penalización por longitud para la salida de LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Umbral de entropía para la salida de LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Umbral de probabilidad logarítmica para la salida del LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | No hay umbral de voz para el procesamiento de audio. |
| `-DontSpeak` | Object | — | — | Named | — | No hablo salida de audio. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | You are a helpful assistant designed to output JSON. |
| `-NoVOX` | Object | — | — | Named | — | Desactivar VOX para la salida de audio. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Utiliza la captura de audio de escritorio. |
| `-NoContext` | Object | — | — | Named | — | No use context for LLM query. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | Object | — | — | Named | — | Hola, ¿cómo estás? |

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)
