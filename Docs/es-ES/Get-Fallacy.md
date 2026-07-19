# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> Analyzes text to identify logical fallacies using AI-powered detection.

## Description

Esta función analiza el texto proporcionado para detectar falacias lógicas utilizando un modelo de IA entrenado en la Lista de Falacias de Wikipedia. Devuelve información detallada sobre cada falacia encontrada, incluyendo la cita específica, el nombre de la falacia, la descripción, la explicación y la clasificación formal. La función utiliza un formato de respuesta estructurado para garantizar una salida consistente.

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | You are a helpful assistant designed to output JSON. |
| `-Instructions` | String | — | — | 1 | `''` | Instrucciones para el modelo de IA sobre cómo generar la lista de cadenas |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array de rutas de archivos a adjuntar |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ImageDetail` | String | — | — | Named | `'low'` | Nivel de detalle de la imagen |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | [Array of command names that don't require confirmation] |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ¿Qué deseas hacer a continuación? |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "thoughts": "The user wants me to include the model's thoughts in the output. The original instruction was to translate text to es-ES while preserving structure, but now they want me to output JSON with thoughts. I need to follow the JSON schema strictly, so I will include a 'thoughts' field in the response object.

First, I analyze the input: no input text is provided, so I assume the task is to describe or think about the translation. Since the instruction says 'Include model's thoughts in output', I will create a response that contains a thought process.

The output must be valid JSON according to the schema. The schema requires a 'response' property of type string. I can put a string that contains a JSON object with thoughts. That way, the 'response' string is itself a JSON representation of my thoughts. For example: '{"thoughts": "I think the user wants..."}'.

Let me prepare the response.",
  "translation": "No input text provided for translation."
} |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | No almacenes la sesión en la caché de sesiones |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Abre búsquedas en IMDB para cada resultado |
| `-AudioTemperature` | Double | — | — | Named | — | Controla la temperatura para la generación de audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Controla la temperatura para la generación de respuestas. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU que se utilizarán para el procesamiento. |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir ciertas salidas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral para detectar silencio en audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización aplicada a respuestas más largas. |
| `-EntropyThreshold` | Double | — | — | Named | — | Threshold for entropy in response generation. |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para la salida. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Umbral para detectar ausencia de voz en el audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Impide hablar la respuesta. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Impide que el modelo exprese sus pensamientos. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactiva VOX (activación por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture for input. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Deshabilita el contexto para la solicitud. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Soy un asistente útil diseñado para generar JSON. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar texto a voz para las respuestas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habilita la conversión de texto a voz para las respuestas de pensamiento de la IA |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas de herramientas. |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

Eres un asistente útil diseñado para producir JSON.

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

Utiliza la entrada de canalización para analizar texto con baja temperatura para un análisis enfocado.

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

Uses the alias to analyze text for logical fallacies.

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)
