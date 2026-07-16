# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile, `transcribe

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | La ruta del archivo de audio o video a transcribir. Si no se proporciona, graba desde el micrófono. |
| `-AudioDevice` | String | — | — | Named | — | Nombre o GUID del dispositivo de audio (admite comodines, selecciona la primera coincidencia) |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Establece el idioma al que se traducirá. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Umbral de suma para marcas de tiempo de tokens, valor predeterminado 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Número máximo de tokens por segmento |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Duración máxima de silencio antes de detener automáticamente la grabación |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Umbral de detección de silencio (0..32767, 30 por defecto) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Número de hilos de CPU a usar, por defecto 0 (automático) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperatura para reconocimiento de voz |
| `-TemperatureInc` | Single | — | — | Named | — | Incremento de temperatura |
| `-Prompt` | String | — | — | Named | — | Haz una pregunta y te responderé. |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamaño del contexto de audio |
| `-MaxDuration` | Object | — | — | Named | — | Duración máxima del audio |
| `-Offset` | Object | — | — | Named | — | Desplazamiento para el audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Número máximo de los últimos tokens de texto |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Longitud máxima de segmento |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Single | — | — | Named | — | Penalización por longitud |
| `-EntropyThreshold` | Single | — | — | Named | — | Umbral de entropía |
| `-LogProbThreshold` | Single | — | — | Named | — | Umbral de probabilidad logarítmica |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Sin umbral de voz |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Whether to include token timestamps in the output |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Whether to split on word boundaries |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Si ignorar el silencio (alterará las marcas de tiempo) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Si mostrar el progreso |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Si no suprimir líneas en blanco |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Si solo se utiliza un segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Si imprimir tokens especiales |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-ModelType` | String | — | — | Named | — | Tipo de modelo Whisper a utilizar, por defecto LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
Hello, this is a sample subtitle.

2
00:00:05,000 --> 00:00:09,000
This is the second subtitle line. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve objetos en lugar de cadenas |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Si usar la captura de audio del escritorio en lugar de la entrada del micrófono |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Use tanto el equipo de escritorio como el dispositivo de grabación |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |
| `-VOX` | SwitchParameter | — | — | Named | — | Use silence detection to automatically stop recording |

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)
