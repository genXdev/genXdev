# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> Convierte el lenguaje diplomático o cortés en lenguaje directo, claro y sencillo.

## Description

Esta función toma el lenguaje diplomático y lo traduce para revelar el verdadero significado detrás del lenguaje cortés o políticamente correcto. Utiliza modelos de lenguaje de IA para transformar expresiones eufemísticas en declaraciones directas, haciendo que la comunicación sea inequívoca y fácil de entender. La función es particularmente útil para analizar declaraciones políticas, comunicaciones empresariales o cualquier texto donde el verdadero significado pueda estar oculto por el lenguaje diplomático.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | We've taken note of your concerns and will give them due consideration. |
| `-Instructions` | String | — | — | 1 | `''` | Instrucciones adicionales para el modelo de IA |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copiar el texto transformado al portapapeles |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object[] | — | — | Named | — | Adjuntos a incluir en la operación de IA. |
| `-ImageDetail` | String | — | — | Named | — | Nivel de detalle de imagen para procesamiento de IA |
| `-Functions` | Object[] | — | — | Named | — | Funciones a exponer al modelo de IA. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets para exponer al modelo de IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Nombres de funciones de herramienta que no requieren confirmación. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Do not add thoughts to the AI history. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {"response":"Sí, claro. Continuemos desde la última operación de IA. Por favor, proporciona más contexto o el texto que deseas transformar."} |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Habla los pensamientos en voz alta durante el procesamiento de IA. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Deshabilitar el almacenamiento en caché de sesión para esta operación. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Permitir el uso de herramientas predeterminadas en la operación de IA. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura de audio para generación de audio con IA. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la generación de respuestas de IA. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar para la operación de IA. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento de audio con IA. |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for AI audio processing. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias de IA. |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para la salida de IA. |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad de logaritmo para la salida de IA. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No hay umbral de voz para el procesamiento de audio con IA. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | No hables la salida de la IA. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | No pienses como una IA. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX para la salida de audio de IA. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Usar captura de audio del escritorio para AI de audio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | No utilice contexto para la operación de IA. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for AI. |
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
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <blockquote>La inteligencia artificial es el futuro.</blockquote> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types in AI output. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas de herramientas. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)
