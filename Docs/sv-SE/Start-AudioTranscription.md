# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile`, `transcribe`

## Synopsis

> Transkriberar en ljudfil, videofil eller en inspelningsenhet till text

## Description

Transkriberar en ljudfil, videofil eller en inspelningsenhet till text med Whisper AI-modellen. Funktionen kan hantera olika ljud- och videoformat, konvertera dem till lämpligt format för transkribering och eventuellt översätta utdata till ett annat språk. Stöder SRT-undertextsformat och olika ljudbehandlingsparametrar för finjustering av transkriberingskvaliteten.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | Sökvägen till ljud- eller videofilen som ska transkriberas. Om inte anges spelas det in från mikrofonen. |
| `-AudioDevice` | String | — | — | Named | — | Ljudenhetens namn eller GUID (stödjer jokertecken, väljer första träffen) |
| `-LanguageIn` | String | — | — | 1 | — | Språket som förväntas i ljudet. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Ställer in språket att översätta till. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Tröskelvärde för summa av token-tidsstämplar, standard är 0,5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Maximalt antal token per segment |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Maximal varaktighet av tystnad innan inspelning automatiskt stoppas |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Tystnadsdetekteringströskel (0..32767, standard är 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Antal CPU-trådar att använda, standard är 0 (auto) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperatur för taligenkänning |
| `-TemperatureInc` | Single | — | — | Named | — | Temperaturökning |
| `-Prompt` | String | — | — | Named | — | Prompt som ska användas för modellen |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex för att undertrycka token från utdata |
| `-AudioContextSize` | Int32 | — | — | Named | — | Storleken på ljudkontexten |
| `-MaxDuration` | Object | — | — | Named | — | Maximal längd för ljudet |
| `-Offset` | Object | — | — | Named | — | Förskjutning för ljudet |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Maximalt antal sista text-tokens |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Maximal segmentlängd |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Starta tidsstämplar från detta ögonblick |
| `-LengthPenalty` | Single | — | — | Named | — | Längdstraff |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropitröskel |
| `-LogProbThreshold` | Single | — | — | Named | — | @{response=Log-sannolikhetströskel} |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Ingen taltröskel |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databassökväg för inställningsdatafiler |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Huruvida token-tidsstämplar ska inkluderas i utdata |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Huruvida man ska dela upp vid ordgränser |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Huruvida tystnad ska ignoreras (kommer att förstöra tidsstämplar) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Om att visa förlopp |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Om att INTE undertrycka tomma rader |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Om endast en segment ska användas |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Huruvida specialtoken ska skrivas ut |
| `-NoContext` | SwitchParameter | — | — | Named | — | @{response=Hej, världen!} |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Använd beam search-samplingsstrategi |
| `-ModelType` | String | — | — | Named | — | Viskningsmodelltyp som ska användas, standard är LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | {
  "response": {
    "response": "1\n00:00:00,000 --> 00:00:05,000\nDetta är en exempeltitel för en text som ska översättas till svenska.\n\n2\n00:00:05,500 --> 00:00:10,000\nHär fortsätter texten med ytterligare information som behöver översättas korrekt."
  }
} |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returnerar objekt istället för strängar |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Om du vill använda skrivbordsljudinspelning istället för mikrofoninmatning |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Använd både skrivbord och inspelningsenhet |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd alternativa inställningar som lagras i sessionen för AI-inställningar som språk, bildsamlingar, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser som språk, bildsamlingar, etc. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Använd inte alternativa inställningar som lagras i sessionen för AI-preferenser som språk, bildsamlingar osv. |
| `-VOX` | SwitchParameter | — | — | Named | — | Använd tystnadsdetektering för att automatiskt stoppa inspelningen |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Parameter Details

### `-Input <Object>`

> Sökvägen till ljud- eller videofilen som ska transkriberas. Om inte anges spelas det in från mikrofonen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `WaveFile`, `FilePath`, `MediaFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> Ljudenhetens namn eller GUID (stödjer jokertecken, väljer första träffen)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Språket som förväntas i ljudet.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> Ställer in språket att översätta till.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> Tröskelvärde för summa av token-tidsstämplar, standard är 0,5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> Maximalt antal token per segment

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> Maximal varaktighet av tystnad innan inspelning automatiskt stoppas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Tystnadsdetekteringströskel (0..32767, standard är 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Antal CPU-trådar att använda, standard är 0 (auto)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> Temperatur för taligenkänning

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

> Temperaturökning

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Prompt som ska användas för modellen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Regex för att undertrycka token från utdata

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Storleken på ljudkontexten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Object>`

> Maximal längd för ljudet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Object>`

> Förskjutning för ljudet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Int32>`

> Maximalt antal sista text-tokens

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Int32>`

> Maximal segmentlängd

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Object>`

> Starta tidsstämplar från detta ögonblick

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> Längdstraff

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> Entropitröskel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> @{response=Log-sannolikhetströskel}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> Ingen taltröskel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Databassökväg för inställningsdatafiler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithTokenTimestamps`

> Huruvida token-tidsstämplar ska inkluderas i utdata

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> Huruvida man ska dela upp vid ordgränser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> Huruvida tystnad ska ignoreras (kommer att förstöra tidsstämplar)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> Om att visa förlopp

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> Om att INTE undertrycka tomma rader

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> Om endast en segment ska användas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> Huruvida specialtoken ska skrivas ut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> @{response=Hej, världen!}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Använd beam search-samplingsstrategi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Viskningsmodelltyp som ska användas, standard är LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SRT`

> {
  "response": {
    "response": "1\n00:00:00,000 --> 00:00:05,000\nDetta är en exempeltitel för en text som ska översättas till svenska.\n\n2\n00:00:05,500 --> 00:00:10,000\nHär fortsätter texten med ytterligare information som behöver översättas korrekt."
  }
}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Returnerar objekt istället för strängar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Om du vill använda skrivbordsljudinspelning istället för mikrofoninmatning

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> Använd både skrivbord och inspelningsenhet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Använd alternativa inställningar som lagras i sessionen för AI-inställningar som språk, bildsamlingar, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser som språk, bildsamlingar, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Använd inte alternativa inställningar som lagras i sessionen för AI-preferenser som språk, bildsamlingar osv.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VOX`

> Använd tystnadsdetektering för att automatiskt stoppa inspelningen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-FoundImagesInBrowser.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Update-AllImageMetaData.md)
