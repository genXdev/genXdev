# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Genereert ondertitelbestanden voor audio- en videobestanden met behulp van OpenAI Whisper.

## Description

Doorzoekt recursief naar mediabestanden in de opgegeven map en gebruikt een lokaal OpenAI Whisper-model om ondertitelbestanden in SRT-formaat te genereren. De functie ondersteunt meerdere audio-/videoformaten en kan optioneel ondertitels naar een andere taal vertalen via een LLM-query. De bestandsnaamgeving volgt een gestandaardiseerd patroon met taalcodes (bijv. video.mp4.en.srt).

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | Het directorypad om te doorzoeken op mediabestanden |
| `-LanguageIn` | String | — | — | 1 | — | De taal die in de audio wordt verwacht. |
| `-LanguageOut` | String | — | — | 2 | — | Stelt de taal in waarnaar moet worden vertaald. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Somdrempel voor token-tijdstempels, standaard ingesteld op 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | Maximum aantal tokens per segment |
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
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert objecten in plaats van strings |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Of gebruik desktop-audio-opname in plaats van microfooningang |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Examples

### Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

```powershell
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"
```

### Save-Transcriptions "C:\Media" "Japanese" "English"

```powershell
Save-Transcriptions "C:\Media" "Japanese" "English"
```

## Related Links

- [Save-Transcriptions on GitHub](https://github.com/genXdev/genXdev)
