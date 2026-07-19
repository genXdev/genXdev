# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `getlist, `getstring

## Synopsis

> Extrae o genera una lista de cadenas relevantes a partir del texto de entrada utilizando análisis de IA.

## Description

Esta función utiliza modelos de IA para analizar el texto de entrada y extraer o generar una lista de cadenas relevantes. Puede procesar texto para identificar puntos clave, extraer elementos de listas o generar conceptos relacionados. La entrada se puede proporcionar directamente a través de parámetros, desde el pipeline o desde el portapapeles del sistema. La función devuelve un array de cadenas y, opcionalmente, copia los resultados al portapapeles.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Tech enthusiasts are reporting that OpenAI may be developing a new artificial intelligence model codenamed "Strawberry," which is rumored to possess enhanced reasoning capabilities, including the ability to solve complex mathematical problems.

"This model could represent a significant breakthrough in AI reasoning," said Sarah Johnson, a technology analyst. "If true, it would enable machines to handle tasks that require more advanced logic and problem-solving."

According to reports, the Strawberry model is designed to improve the way AI processes and understands mathematical data, potentially revolutionizing fields such as science and engineering that rely heavily on complex calculations. Experts also say the model could have applications in other areas requiring robust reasoning. |
| `-Instructions` | String | — | — | 1 | `''` | Instrucciones para el modelo de IA sobre cómo generar la lista de cadenas |
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
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar el resultado al portapapeles |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants me to include the model's thoughts in the output. The original instruction was to translate text to es-ES while preserving structure, but now they want me to output JSON with thoughts. I need to follow the JSON schema strictly, so I will include a 'thoughts' field in the response object.

First, I analyze the input: no input text is provided, so I assume the task is to describe or think about the translation. Since the instruction says 'Include model's thoughts in output', I will create a response that contains a thought process.

The output must be valid JSON according to the schema. The schema requires a 'response' property of type string. I can put a string that contains a JSON object with thoughts. That way, the 'response' string is itself a JSON representation of my thoughts. For example: '{"thoughts": "I think the user wants..."}'.

Let me prepare the response.",
  "translation": "No input text provided for translation."
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | No añadas pensamientos del modelo al historial de conversación |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ¿Qué deseas hacer a continuación? |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilita la conversión de texto a voz para las respuestas de pensamiento de la IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenes la sesión en la caché de sesiones |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Habilitar herramientas predeterminadas para el modelo de IA |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la aleatoriedad de la respuesta de texto. |
| `-Language` | String | — | — | Named | — | es-ES |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar. |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir ciertas salidas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para la detección de audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias. |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para el filtrado de salida. |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desactivar la salida de voz para los pensamientos. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utiliza la captura de audio de escritorio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Responder únicamente con respuestas. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas de herramientas. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Outputs

- `String[]`

## Related Links

- [Invoke-LLMStringListEvaluation on GitHub](https://github.com/genXdev/genXdev)
