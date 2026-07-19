# Get-SpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convierte archivos de audio a texto usando el modelo de reconocimiento de voz Whisper de OpenAI.

## Description

Procesa archivos de audio y convierte el habla en texto utilizando la librería Whisper.NET, que implementa el sistema de reconocimiento automático del habla (ASR) Whisper de OpenAI. Soporta múltiples idiomas, capacidades de traducción y diversas configuraciones de calidad de transcripción.

## Syntax

```powershell
Get-SpeechToText [-Input] <Object> [-ModelFileDirectoryPath <string>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-NoSpeechThreshold <float>] [-Prompt <string>] [-SuppressRegex <string>] [-TokenTimestampsSumThreshold <float>] [-MaxTokensPerSegment <int>] [-AudioContextSize <int>] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-ModelType <GgmlType>] [-Passthru] [-WithTokenTimestamps] [-SplitOnWord] [-WithTranslate] [-WithProgress] [-DontSuppressBlank] [-SingleSegmentOnly] [-PrintSpecialTokens] [-NoContext] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Ruta al directorio del archivo del modelo |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Ruta de archivo de audio, objeto FileInfo o cualquier formato de audio compatible con Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Establece el idioma de entrada a detectar, por defecto es 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Establece el idioma de salida |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatura para detección de voz |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incremento de temperatura |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Sin umbral de voz |
| `-Prompt` | String | — | — | Named | — | Haz una pregunta y te responderé. |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Umbral de suma para marcas de tiempo de tokens, valor predeterminado 0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de tokens por segmento |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Tamaño del contexto de audio |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Duración máxima del audio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Desplazamiento para el audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de los últimos tokens de texto |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Longitud máxima de segmento |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Penalización por longitud |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Umbral de entropía |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Umbral de probabilidad logarítmica |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Tipo de modelo Whisper a utilizar, por defecto LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Devuelve objetos en lugar de cadenas |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Si incluir marcas de tiempo de los tokens |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Whether to split on word boundaries |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | true |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Si mostrar el progreso |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Si no suprimir líneas en blanco |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Si solo se utiliza un segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Si imprimir tokens especiales |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Use beam search sampling strategy |

## Examples

### Example 1

```powershell
Get-SpeechToText -Input "C:\audio\recording.wav"
```

Transcribe un archivo de audio a texto usando la configuración predeterminada.

### Example 2

```powershell
Get-ChildItem "C:\audio\*.wav" | Get-SpeechToText
```

Transcribe todos los archivos WAV en un directorio.

### Example 3

```powershell
Get-SpeechToText -Input "audio.mp3" -LanguageIn "es" -WithTranslate
```

Transcribe audio en español y lo traduce al inglés.

### Example 4

```powershell
Get-SpeechToText -Input "recording.wav" -Passthru -WithTokenTimestamps
```

Devuelve objetos SegmentData con información precisa de sincronización.

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
