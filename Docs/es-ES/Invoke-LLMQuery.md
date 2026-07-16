# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Texto de consulta para enviar al modelo |
| `-Instructions` | String | — | — | 1 | — | Instrucciones del sistema para el modelo |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de rutas de archivos a adjuntar |
| `-ResponseFormat` | String | — | — | Named | — | A JSON schema for the requested output format |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Funciones de herramientas que no requieren confirmación del usuario |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para la aleatoriedad en la generación de audio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta (chat de audio) |
| `-Language` | String | — | — | Named | — | Código de idioma o nombre para chat de audio |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar para el chat de audio |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir ciertas salidas en chat de audio |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el chat de audio |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para el chat de audio |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para respuestas de chat de audio |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para chat de audio |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para chat de audio |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Sin umbral de voz para el chat de audio |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | No reproduzcas respuestas de audio |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | No hables pensamientos en voz alta |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz) para el chat de audio |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture for audio chat |
| `-NoContext` | SwitchParameter | — | — | Named | — | desactivar contexto para chat de audio |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for audio chat |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
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
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants me to include the model's thoughts in the output. The original instruction was to translate text to es-ES while preserving structure, but now they want me to output JSON with thoughts. I need to follow the JSON schema strictly, so I will include a 'thoughts' field in the response object.

First, I analyze the input: no input text is provided, so I assume the task is to describe or think about the translation. Since the instruction says 'Include model's thoughts in output', I will create a response that contains a thought process.

The output must be valid JSON according to the schema. The schema requires a 'response' property of type string. I can put a string that contains a JSON object with thoughts. That way, the 'response' string is itself a JSON representation of my thoughts. For example: '{"thoughts": "I think the user wants..."}'.

Let me prepare the response.",
  "translation": "No input text provided for translation."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Excluir procesos de pensamiento del historial de conversación |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ¿Qué deseas hacer a continuación? |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilita la conversión de texto a voz para las respuestas de pensamiento de la IA |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Solo generará bloques de marcado de los tipos especificados |
| `-ChatMode` | String | — | — | Named | — | Habilitar modo de chat |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Usado internamente, para invocar el modo de chat solo una vez después de la invocación del llm |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenes la sesión en la caché de sesiones |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Longitud máxima de la salida de la devolución de llamada de la herramienta en caracteres. La salida que exceda esta longitud será truncada con un mensaje de advertencia. El valor predeterminado es 100000 caracteres. |

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)
