# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Texto de consulta inicial para enviar al modelo |
| `-Instructions` | String | — | — | 1 | — | Instrucciones del sistema para el modelo |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de rutas de archivos a adjuntar |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Tipo de modelo Whisper a utilizar, por defecto LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Temperatura para el reconocimiento de entrada de audio (0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | El parámetro de temperatura para controlar la aleatoriedad de la respuesta. |
| `-LanguageIn` | String | — | — | Named | — | Establece el idioma a detectar |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Número de hilos de CPU a usar, por defecto 0 (automático) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Umbral de detección de silencio (0..32767, 30 por defecto) |
| `-LengthPenalty` | Single | — | — | Named | — | Penalización por longitud |
| `-EntropyThreshold` | Single | — | — | Named | — | Umbral de entropía |
| `-LogProbThreshold` | Single | — | — | Named | — | Umbral de probabilidad logarítmica |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Sin umbral de voz |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Solo generará bloques de marcado de los tipos especificados |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-Functions` | ScriptBlock[] | — | — | Named | — | ScriptBlock array of tool functions to expose to the LLM (pass-through to Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array of tool function names that do not require confirmation (pass-through to Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Modo de chat para consulta LLM (pass-through a Invoke-LLM-Query) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada de herramienta (pasar a Invoke-LLMQuery) |
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
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desactivar la conversión de texto a voz para las respuestas de IA |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desactivar texto a voz para las respuestas de pensamiento de la IA |
| `-NoVOX` | SwitchParameter | — | — | Named | — | No utilice la detección de silencio para detener la grabación automáticamente. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Si usar la captura de audio del escritorio en lugar de la entrada del micrófono |
| `-AudioDevice` | String | — | — | Named | — | Nombre o GUID del dispositivo de audio (admite comodines, selecciona la primera coincidencia) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Use tanto el equipo de escritorio como el dispositivo de grabación |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Si suprimir el texto reconocido en la salida |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenes la sesión en la caché de sesiones |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)
