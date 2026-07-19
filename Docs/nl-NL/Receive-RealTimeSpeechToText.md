# Receive-RealTimeSpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Converteert realtime audio-invoer naar tekst met behulp van het Whisper AI-model.

## Description

Deze cmdlet vangt audio op van microfoon of bureaublad en transcribeert het in real-time naar tekst met behulp van het Whisper AI-model. Het ondersteunt verschillende audiobronnen, stilte-detectie en meerdere configuratieopties voor spraakherkenning.

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Path naar het modelbestand |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Gebruik desktop-audio-opname in plaats van microfoon |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | Of zowel desktop-audiocapture als opnameapparaat tegelijkertijd moet worden gebruikt |
| `-AudioDevice` | String | — | — | Named | — | Gebruik zowel desktop als opnameapparaat |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retourneert objecten in plaats van strings |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Of om token-tijdstempels te includeren |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Somdrempel voor token-tijdstempels, standaard ingesteld op 0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Of scheiden op woordgrenzen |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximum aantal tokens per segment |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | Of stilte negeren (verstoort tijdstempels) |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximum duration of silence before automatically stopping recording |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Drempeldetectie stilte (0..32767, standaard 30) |
| `-LanguageIn` | String | — | — | Named | — | Stelt de invoertaal in om te detecteren, standaard 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Stelt de uitvoertaal in |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatuur voor spraakdetectie |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatuurtoename |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-Prompt` | String | — | — | Named | — | Prompt om te gebruiken voor het model |
| `-SuppressRegex` | String | — | — | Named | — | Regex om tokens uit de uitvoer te onderdrukken |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Of voortgang tonen |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Grootte van de audiocontext |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Whether to NOT suppress blank lines |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale duur van de audio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Offset voor de audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximum number of last text tokens |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Of alleen één segment gebruiken |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Of speciale tokens moeten worden afgedrukt |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximum segment length |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Lengtestraf |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Entropiedrempel |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Drempelwaarschijnlijkheid voor logaritme |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Geen spraakdrempel |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Gebruik geen context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Gebruik beam search samplingstrategie |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Welk Whisper-modeltype te gebruiken, standaard Small |

## Examples

### Example 1

```powershell
Receive-RealTimeSpeechToText
```

Basisgebruik met microfoon.

### Example 2

```powershell
Receive-RealTimeSpeechToText -UseDesktopAudioCapture
```

Desktop-audio-opname gebruiken.

### Example 3

```powershell
Receive-RealTimeSpeechToText -AudioDevice "Microphone*"
```

Specifiek audioapparaat gebruiken.

### Example 4

```powershell
Receive-RealTimeSpeechToText -MaxDurationOfSilence "00:00:05"
```

Met stiltedetectie.

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
