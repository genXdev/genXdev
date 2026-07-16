# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Array de títulos de películas para analizar similitudes |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | El tipo de consulta de LLM |
| `-Model` | String | — | — | Named | — | El identificador o patrón de modelo a utilizar para operaciones de IA |
| `-ApiEndpoint` | String | — | — | Named | — | La URL del endpoint de la API para operaciones de IA |
| `-ApiKey` | String | — | — | Named | — | La clave API para operaciones de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | El tiempo de espera en segundos para las operaciones de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para la aleatoriedad de la respuesta (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Abre búsquedas en IMDB para cada resultado |
| `-Language` | String | — | — | Named | — | Lengua para búsqueda o sesión de navegación en IMDB |
| `-Monitor` | Int32 | — | — | Named | `-1` | Índice o nombre del monitor para la colocación de la ventana del navegador |
| `-Width` | Int32 | — | — | Named | `-1` | Ancho de la ventana del navegador en píxeles |
| `-Height` | Int32 | — | — | Named | `-1` | Altura de la ventana del navegador en píxeles |
| `-AcceptLang` | String | — | — | Named | — | Accept-Language HTTP header for browser session |
| `-Private` | SwitchParameter | — | — | Named | — | Abrir navegador en modo privado/incógnito |
| `-Chrome` | SwitchParameter | — | — | Named | — | Usa Google Chrome para la sesión del navegador |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use Chromium for browser session |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Mozilla Firefox for browser session |
| `-Left` | Int32 | — | — | Named | — | Posición izquierda de la ventana del navegador en píxeles |
| `-Right` | Int32 | — | — | Named | — | Posición derecha de la ventana del navegador en píxeles |
| `-Bottom` | Int32 | — | — | Named | — | Posición inferior de la ventana del navegador en píxeles |
| `-Centered` | SwitchParameter | — | — | Named | — | Abrir ventana del navegador centrada en la pantalla |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abrir navegador en modo pantalla completa |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Abrir navegador en modo aplicación (interfaz de usuario mínima) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Deshabilitar las extensiones del navegador para la sesión |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactivar bloqueador de ventanas emergentes en la sesión del navegador |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiza la ventana del navegador después de abrir |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco en la ventana anterior después de cerrar el navegador |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Abrir cada resultado de IMDb en una nueva ventana del navegador |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Return only the URL without opening browser |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape al navegador después de abrir |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en el navegador después de enviar las teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys to browser |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retraso en milisegundos entre el envío de teclas al navegador |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Abrir ventana del navegador sin bordes |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Abrir ventanas del navegador una al lado de la otra para cada resultado |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Instructions` | String | — | — | Named | — | Instrucciones para el modelo de IA sobre cómo generar la lista de cadenas |
| `-Attachments` | String[] | — | — | Named | — | Array de rutas de archivos a adjuntar |
| `-ImageDetail` | String | — | — | Named | — | Nivel de detalle de imagen para el procesamiento de imágenes. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array of function definitions that can be called by the AI model during processing. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array de definiciones de comandos de PowerShell para usar como herramientas que la IA puede invocar. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array de nombres de comandos que no requieren confirmación antes de la ejecución. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para generación de audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para la generación de respuestas. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de hilos de CPU a utilizar. |
| `-SuppressRegex` | String | — | — | Named | — | Expresión regular para suprimir ciertas salidas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio para el procesamiento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Umbral de silencio para el procesamiento de audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalización por longitud para la generación de secuencias. |
| `-EntropyThreshold` | Double | — | — | Named | — | Umbral de entropía para el filtrado de salida. |
| `-LogProbThreshold` | Double | — | — | Named | — | Umbral de probabilidad logarítmica para el filtrado de salida. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desactivar salida de pensamiento en voz alta. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desactivar VOX (activación por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Utiliza la captura de audio de escritorio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Responder únicamente con respuestas. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Cuando se especifica, copia la lista de cadenas resultante de nuevo al portapapeles del sistema después del procesamiento. |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Habilitar herramientas predeterminadas para el modelo de IA. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longitud máxima de devolución de llamada para llamadas de herramientas. |

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
