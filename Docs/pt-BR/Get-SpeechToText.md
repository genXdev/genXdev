# Get-SpeechToText

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SpeechToText [-Input] <Object> [-ModelFileDirectoryPath <string>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-NoSpeechThreshold <float>] [-Prompt <string>] [-SuppressRegex <string>] [-TokenTimestampsSumThreshold <float>] [-MaxTokensPerSegment <int>] [-AudioContextSize <int>] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-ModelType <GgmlType>] [-Passthru] [-WithTokenTimestamps] [-SplitOnWord] [-WithTranslate] [-WithProgress] [-DontSuppressBlank] [-SingleSegmentOnly] [-PrintSpecialTokens] [-NoContext] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Caminho para o diretório do arquivo do modelo |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Caminho do arquivo de áudio, objeto FileInfo ou qualquer formato de áudio suportado pelo Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Define o idioma de entrada a ser detectado, padrão 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Define o idioma de saída |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatura para detecção de fala |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incremento de temperatura |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Limiar de fala ausente |
| `-Prompt` | String | — | — | Named | — | Olá, como posso ajudar você hoje? |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir tokens da saída |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Limiar de soma para timestamps de token, padrão é 0,5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de tokens por segmento |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Tamanho do contexto de áudio |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Duração máxima do áudio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Deslocamento para o áudio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Número máximo de últimos tokens de texto |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Comprimento máximo do segmento |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Comece os timestamps neste momento |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Penalidade de comprimento |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Limiar de entropia |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Limiar de probabilidade logarítmica |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Tipo de modelo Whisper a ser usado, padrão é LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retorna objetos em vez de strings |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Se incluir timestamps dos tokens |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Se dividir em limites de palavras |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Traduzir ou não a saída |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Se deve ou não mostrar o progresso |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Se não suprimir linhas em branco |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Se usar apenas um segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Se imprimir tokens especiais |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Não use contexto |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Use a estratégia de amostragem por beam search |

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
