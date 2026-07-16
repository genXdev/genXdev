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
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | Het bestandspad van het audio- of videobestand dat moet worden getranscribeerd. Indien niet opgegeven, wordt er opgenomen via de microfoon. |
| `-AudioDevice` | String | — | — | Named | — | Naam of GUID van audioapparaat (ondersteunt jokertekens, kiest eerste overeenkomst) |
| `-LanguageIn` | String | — | — | 1 | — | De taal die in de audio wordt verwacht. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Stelt de taal in waarnaar moet worden vertaald. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Somdrempel voor token-tijdstempels, standaard ingesteld op 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Maximum aantal tokens per segment |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Maximum duration of silence before automatically stopping recording |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Drempeldetectie stilte (0..32767, standaard 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Aantal CPU-threads dat moet worden gebruikt, standaard 0 (automatisch) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperatuur voor spraakherkenning |
| `-TemperatureInc` | Single | — | — | Named | — | Temperatuurtoename |
| `-Prompt` | String | — | — | Named | — | Prompt om te gebruiken voor het model |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex om tokens uit de uitvoer te onderdrukken |
| `-AudioContextSize` | Int32 | — | — | Named | — | Grootte van de audiocontext |
| `-MaxDuration` | Object | — | — | Named | — | Maximale duur van de audio |
| `-Offset` | Object | — | — | Named | — | Offset voor de audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Maximum number of last text tokens |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Maximum segment length |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Single | — | — | Named | — | Lengtestraf |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropiedrempel |
| `-LogProbThreshold` | Single | — | — | Named | — | Drempelwaarschijnlijkheid voor logaritme |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Geen spraakdrempel |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Of je tokentijdsstempels in de uitvoer wilt opnemen |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Of scheiden op woordgrenzen |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Of stilte negeren (verstoort tijdstempels) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Of voortgang tonen |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Of alleen één segment gebruiken |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Of speciale tokens moeten worden afgedrukt |
| `-NoContext` | SwitchParameter | — | — | Named | — | Gebruik geen context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik beam search samplingstrategie |
| `-ModelType` | String | — | — | Named | — | Whisper-modeltype om te gebruiken, standaard is LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:00,000 --> 00:00:01,000
This is the first subtitle.

2
00:00:01,500 --> 00:00:03,000
And this is the second subtitle.

3
00:00:04,000 --> 00:00:06,500
Subtitles can be multiple lines,
like this one. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert objecten in plaats van strings |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Of gebruik desktop-audio-opname in plaats van microfooningang |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Gebruik zowel desktop als opnameapparaat |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-VOX` | SwitchParameter | — | — | Named | — | Use silence detection to automatically stop recording |

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)
