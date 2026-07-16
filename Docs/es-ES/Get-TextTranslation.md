# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | You are a helpful assistant designed to output JSON. |
| `-Instructions` | String | — | — | 1 | — | Eres un asistente servicial diseñado para generar JSON. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de rutas de archivos a adjuntar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | [Array of command names that don't require confirmation] |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar el texto mejorado al portapapeles |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir el uso de herramientas de IA predeterminadas durante el procesamiento |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de audio (pasada al LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la generación de respuestas (pasada al LLM) |
| `-Language` | String | — | — | Named | — | es-ES |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use (passed to LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir la salida (pasado al LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para procesamiento (enviado al LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para detección de audio (pasado al LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias (pasado al LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para el filtrado de salida (pasado al LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida (pasado al LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Sin umbral de voz para detección de audio (pasado al LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desactivar la salida de voz (pasado al LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts (passed to LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz) (pasado a LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar captura de audio de escritorio (pasado a LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desactivar uso de contexto (pasado a LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Habilitar la estrategia de muestreo de búsqueda en haz (pasada al LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Only respond to content passed to the language model |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks (passed to LLM) |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Skip the translation cache; always call the LLM API |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Clear the entire translation cache for all languages |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)
