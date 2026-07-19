# ConvertFrom-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `uncorporatize

## Synopsis

> Translates corporate jargon into plain, clear language using AI.

## Description

Esta función procesa el texto de entrada para transformar comunicaciones diplomáticas y corporativas en un lenguaje más directo y claro. Puede aceptar entrada directamente a través de parámetros, desde la tubería o desde el portapapeles del sistema. La función aprovecha modelos de IA para analizar y reformular el texto conservando la intención original.

## Syntax

```powershell
ConvertFrom-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | We need to take action now to fix this problem. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de rutas de archivos a adjuntar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | [Array of command names that don't require confirmation] |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de audio (pasada a LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response generation (passed to LLMQuery) |
| `-Language` | String | — | — | Named | — | Código de idioma o nombre para procesar (pasado a LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar (pasado a LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir la salida (pasada a LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño de contexto de audio para procesamiento (pasado a LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para detección de audio (pasado a LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias (pasada a LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para el filtrado de salida (pasado a LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida (pasado a LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No hay umbral de voz para la detección de audio (pasado a LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output (passed to LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desactivar la salida de voz para los pensamientos (pasados a LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz) (pasado a LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar la captura de audio de escritorio (pasada a LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage (passed to LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Enable beam search sampling strategy (passed to LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses (passed to LLMQuery) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks (passed to LLMQuery) |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filtrar por tipos de bloques de marcado (pasado a LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de la llamada a la herramienta (pasada a LLMQuery) |

## Examples

### ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard

```powershell
ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard
```

### "We should circle back" | uncorporatize ###############################################################################

```powershell
"We should circle back" | uncorporatize
###############################################################################
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-CorporateSpeak on GitHub](https://github.com/genXdev/genXdev)
