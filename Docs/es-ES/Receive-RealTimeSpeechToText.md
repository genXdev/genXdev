# Receive-RealTimeSpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convierte la entrada de audio en tiempo real a texto usando el modelo Whisper AI.

## Description

Este cmdlet captura audio desde el micrófono o el escritorio y lo transcribe a texto en tiempo real utilizando el modelo Whisper AI. Admite varias fuentes de audio, detección de silencio y múltiples opciones de configuración para el reconocimiento del habla.

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Ruta al archivo del modelo |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Si usar la captura de audio del escritorio en lugar del micrófono |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | Whether to use both desktop audio capture and recording device simultaneously |
| `-AudioDevice` | String | — | — | Named | — | Use tanto el equipo de escritorio como el dispositivo de grabación |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Devuelve objetos en lugar de cadenas |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Si incluir marcas de tiempo de los tokens |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Umbral de suma para marcas de tiempo de tokens, valor predeterminado 0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Whether to split on word boundaries |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de tokens por segmento |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | Si ignorar el silencio (alterará las marcas de tiempo) |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Duración máxima de silencio antes de detener automáticamente la grabación |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Umbral de detección de silencio (0..32767, 30 por defecto) |
| `-LanguageIn` | String | — | — | Named | — | Establece el idioma de entrada a detectar, por defecto es 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Establece el idioma de salida |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatura para detección de voz |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incremento de temperatura |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | true |
| `-Prompt` | String | — | — | Named | — | Haz una pregunta y te responderé. |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Si mostrar el progreso |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Tamaño del contexto de audio |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Si no suprimir líneas en blanco |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Duración máxima del audio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Desplazamiento para el audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de los últimos tokens de texto |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Si solo se utiliza un segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Si imprimir tokens especiales |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Longitud máxima de segmento |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Penalización por longitud |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Umbral de entropía |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Umbral de probabilidad logarítmica |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Sin umbral de voz |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Use beam search sampling strategy |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Tipo de modelo Whisper a utilizar, por defecto Small |

## Examples

### Example 1

```powershell
Receive-RealTimeSpeechToText
```

Uso básico con micrófono.

### Example 2

```powershell
Receive-RealTimeSpeechToText -UseDesktopAudioCapture
```

Usando captura de audio de escritorio.

### Example 3

```powershell
Receive-RealTimeSpeechToText -AudioDevice "Microphone*"
```

Usando un dispositivo de audio específico.

### Example 4

```powershell
Receive-RealTimeSpeechToText -MaxDurationOfSilence "00:00:05"
```

Con detección de silencio.

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
