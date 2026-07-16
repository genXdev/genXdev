# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | @{type=json_schema; json_schema=} |
| `-Instructions` | String | — | — | 1 | `''` | Instrucciones para que el modelo de IA evalúe la declaración |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de rutas de archivos a adjuntar |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | [Array of command names that don't require confirmation] |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar el resultado al portapapeles |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants me to include the model's thoughts in the output. The original instruction was to translate text to es-ES while preserving structure, but now they want me to output JSON with thoughts. I need to follow the JSON schema strictly, so I will include a 'thoughts' field in the response object.

First, I analyze the input: no input text is provided, so I assume the task is to describe or think about the translation. Since the instruction says 'Include model's thoughts in output', I will create a response that contains a thought process.

The output must be valid JSON according to the schema. The schema requires a 'response' property of type string. I can put a string that contains a JSON object with thoughts. That way, the 'response' string is itself a JSON representation of my thoughts. For example: '{"thoughts": "I think the user wants..."}'.

Let me prepare the response.",
  "translation": "No input text provided for translation."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | No agregues pensamientos del modelo al historial de la conversación |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ¿Qué deseas hacer a continuación? |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilita la conversión de texto a voz para las respuestas de pensamiento de la IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenes la sesión en la caché de sesiones |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir que la IA utilice herramientas y capacidades predeterminadas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | {
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
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de audio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para generación de respuesta |
| `-Language` | String | — | — | Named | — | es-ES |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar para el procesamiento |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir de la salida |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para detección de audio |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para el filtrado de salida |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Sin umbral de voz para la detección de audio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desactivar salida de voz |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usa la captura de audio del escritorio como entrada |
| `-NoContext` | SwitchParameter | — | — | Named | — | No utilices contexto en la consulta |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {"response":"Solo devuelve respuestas del modelo"} |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)
