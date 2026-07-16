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
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | O caminho do arquivo de áudio ou vídeo para transcrever. Se não for fornecido, grava do microfone. |
| `-AudioDevice` | String | — | — | Named | — | Nome ou GUID do dispositivo de áudio (aceita curingas, escolhe a primeira correspondência) |
| `-LanguageIn` | String | — | — | 1 | — | O idioma esperado no áudio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Define o idioma para traduzir. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Limiar de soma para timestamps de token, padrão é 0,5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Número máximo de tokens por segmento |
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
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
Este é um exemplo de legenda.

2
00:00:05,000 --> 00:00:08,000
Aqui está outra legenda. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna objetos em vez de strings |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Se deve usar captura de áudio da área de trabalho em vez de entrada do microfone |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Use ambos: desktop e dispositivo de gravação |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-VOX` | SwitchParameter | — | — | Named | — | Use detecção de silêncio para interromper automaticamente a gravação |

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)
