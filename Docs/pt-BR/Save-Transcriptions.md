# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | O caminho do diretório para pesquisar arquivos de mídia |
| `-LanguageIn` | String | — | — | 1 | — | O idioma esperado no áudio. |
| `-LanguageOut` | String | — | — | 2 | — | Define o idioma para traduzir. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Limiar de soma para timestamps de token, padrão é 0,5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | Número máximo de tokens por segmento |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Duração máxima de silêncio antes de parar automaticamente a gravação |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Limiar de detecção de silêncio (0..32767, padrão 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Número de threads da CPU a ser usado, padrão é 0 (automático) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperatura para reconhecimento de fala |
| `-TemperatureInc` | Single | — | — | Named | — | Incremento de temperatura |
| `-Prompt` | String | — | — | Named | — | Olá, como posso ajudar você hoje? |
| `-SuppressRegex` | String | — | — | Named | `$null` | Expressão regular para suprimir tokens da saída |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio |
| `-MaxDuration` | Object | — | — | Named | — | Duração máxima do áudio |
| `-Offset` | Object | — | — | Named | — | Deslocamento para o áudio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Número máximo de últimos tokens de texto |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Comprimento máximo do segmento |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Comece os timestamps neste momento |
| `-LengthPenalty` | Single | — | — | Named | — | Penalidade de comprimento |
| `-EntropyThreshold` | Single | — | — | Named | — | Limiar de entropia |
| `-LogProbThreshold` | Single | — | — | Named | — | Limiar de probabilidade logarítmica |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Limiar de fala ausente |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Se incluir timestamps de tokens na saída |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Se dividir em limites de palavras |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Se ignorar o silêncio (vai bagunçar os timestamps) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Se deve ou não mostrar o progresso |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Se não suprimir linhas em branco |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Se usar apenas um segmento |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Se imprimir tokens especiais |
| `-NoContext` | SwitchParameter | — | — | Named | — | Não use contexto |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem por beam search |
| `-ModelType` | String | — | — | Named | — | Tipo de modelo Whisper a ser usado, padrão é LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna objetos em vez de strings |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Se deve usar captura de áudio da área de trabalho em vez de entrada do microfone |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Related Links

- [Save-Transcriptions on GitHub](https://github.com/genXdev/genXdev)
