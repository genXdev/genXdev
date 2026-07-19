# Receive-RealTimeSpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Converte entrada de áudio em tempo real para texto usando o modelo Whisper AI.

## Description

Este cmdlet captura áudio do microfone ou da área de trabalho e o transcreve em texto em tempo real usando o modelo Whisper AI. Ele suporta várias fontes de áudio, detecção de silêncio e múltiplas opções de configuração para reconhecimento de fala.

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Caminho para o arquivo do modelo |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Usar captura de áudio da área de trabalho em vez do microfone |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | Se deve usar a captura de áudio da área de trabalho e o dispositivo de gravação simultaneamente |
| `-AudioDevice` | String | — | — | Named | — | Use ambos: desktop e dispositivo de gravação |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retorna objetos em vez de strings |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Se incluir timestamps dos tokens |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Limiar de soma para timestamps de token, padrão é 0,5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Se dividir em limites de palavras |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de tokens por segmento |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | Se ignorar o silêncio (vai bagunçar os timestamps) |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Duração máxima de silêncio antes de parar automaticamente a gravação |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Limiar de detecção de silêncio (0..32767, padrão 30) |
| `-LanguageIn` | String | — | — | Named | — | Define o idioma de entrada a ser detectado, padrão 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Define o idioma de saída |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatura para detecção de fala |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incremento de temperatura |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Traduzir ou não a saída |
| `-Prompt` | String | — | — | Named | — | Olá, como posso ajudar você hoje? |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir tokens da saída |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Se deve ou não mostrar o progresso |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Tamanho do contexto de áudio |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Se não suprimir linhas em branco |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Duração máxima do áudio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Deslocamento para o áudio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de últimos tokens de texto |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Se usar apenas um segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Se imprimir tokens especiais |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Comprimento máximo do segmento |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Comece os timestamps neste momento |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Penalidade de comprimento |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Limiar de entropia |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Limiar de probabilidade logarítmica |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Limiar de fala ausente |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Não use contexto |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Use a estratégia de amostragem por beam search |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Tipo de modelo Whisper a ser usado, o padrão é Small |

## Examples

### Example 1

```powershell
Receive-RealTimeSpeechToText
```

Uso básico com microfone.

### Example 2

```powershell
Receive-RealTimeSpeechToText -UseDesktopAudioCapture
```

Usando captura de áudio da área de trabalho.

### Example 3

```powershell
Receive-RealTimeSpeechToText -AudioDevice "Microphone*"
```

Usando dispositivo de áudio específico.

### Example 4

```powershell
Receive-RealTimeSpeechToText -MaxDurationOfSilence "00:00:05"
```

Com detecção de silêncio.

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
