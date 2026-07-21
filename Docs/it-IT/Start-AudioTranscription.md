# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile`, `transcribe`

## Synopsis

> Trascrive un file audio, un file video o un dispositivo di registrazione in testo.

## Description

Trascrive un file audio, un file video o un dispositivo di registrazione in testo utilizzando il modello Whisper AI. La funzione può gestire vari formati audio e video, convertirli nel formato appropriato per la trascrizione e, opzionalmente, tradurre l'output in una lingua diversa. Supporta l'output in formato SRT per i sottotitoli e vari parametri di elaborazione audio per ottimizzare la qualità della trascrizione.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | Il percorso del file audio o video da trascrivere. Se non fornito, registra dal microfono. |
| `-AudioDevice` | String | — | — | Named | — | Nome del dispositivo audio o GUID (supporta caratteri jolly, seleziona la prima corrispondenza) |
| `-LanguageIn` | String | — | — | 1 | — | La lingua da aspettarsi nell'audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Imposta la lingua in cui tradurre. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Soglia di somma per i timestamp dei token, predefinita a 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Numero massimo di token per segmento |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Durata massima del silenzio prima di interrompere automaticamente la registrazione |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Soglia di rilevamento del silenzio (0..32767, default 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Numero di thread della CPU da utilizzare, il valore predefinito è 0 (automatico) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperatura per il riconoscimento vocale |
| `-TemperatureInc` | Single | — | — | Named | — | Incremento di temperatura |
| `-Prompt` | String | — | — | Named | — | Prompt da utilizzare per il modello |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex per sopprimere i token dall'output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Dimensione del contesto audio |
| `-MaxDuration` | Object | — | — | Named | — | Durata massima dell'audio |
| `-Offset` | Object | — | — | Named | — | Offset per l'audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Numero massimo di ultimi token di testo |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Lunghezza massima del segmento |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Avvia i timestamp da questo momento |
| `-LengthPenalty` | Single | — | — | Named | — | Penalità di lunghezza |
| `-EntropyThreshold` | Single | — | — | Named | — | Soglia di entropia |
| `-LogProbThreshold` | Single | — | — | Named | — | Soglia di probabilità logaritmica |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Soglia di assenza di parlato |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Percorso del database per i file dei dati delle preferenze |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Se includere i timestamp dei token nell'output |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Se dividere in base ai confini delle parole |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Se ignorare il silenzio (rovinerà i timestamp) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Se mostrare l'avanzamento |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Se non sopprimere le righe vuote |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Se utilizzare un singolo segmento solamente |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Se stampare i token speciali |
| `-NoContext` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Restituisce la quantità totale di memoria, in megabyte, in un computer.
.DESCRIPTION
    Questo cmdlet ottiene la quantità totale di memoria, in megabyte, installata fisicamente in un computer specificato.
.PARAMETER ComputerName
    Specifica il nome del computer per cui si desidera recuperare la quantità totale di memoria.
    Se viene omesso il parametro ComputerName, il valore predefinito è il computer locale.
.EXAMPLE
    Get-SystemMemory
.EXAMPLE
    Get-SystemMemory -ComputerName Server01
    Questo comando ottiene la quantità di memoria installata nel computer Server01. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Usa la strategia di campionamento beam search |
| `-ModelType` | String | — | — | Named | — | Tipo di modello Whisper da utilizzare, predefinito a LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:00,000 --> 00:00:05,000
Questo è un esempio di sottotitolo.

2
00:00:05,000 --> 00:00:10,000
Ecco un altro sottotitolo per mostrare il formato SRT. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Restituisce oggetti invece di stringhe |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Se utilizzare la cattura audio del desktop anziché l'ingresso del microfono |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Utilizzare sia il computer desktop che il dispositivo di registrazione |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilizza impostazioni alternative memorizzate nella sessione per le preferenze dell'IA, come lingua, raccolte di immagini, ecc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI come Lingua, Raccolte immagini, ecc. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze di IA come lingua, raccolte di immagini, ecc. |
| `-VOX` | SwitchParameter | — | — | Named | — | Utilizza il rilevamento del silenzio per interrompere automaticamente la registrazione |

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

> Il percorso del file audio o video da trascrivere. Se non fornito, registra dal microfono.

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

> Nome del dispositivo audio o GUID (supporta caratteri jolly, seleziona la prima corrispondenza)

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

> La lingua da aspettarsi nell'audio.

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

> Imposta la lingua in cui tradurre.

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

> Soglia di somma per i timestamp dei token, predefinita a 0.5

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

> Numero massimo di token per segmento

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

> Durata massima del silenzio prima di interrompere automaticamente la registrazione

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

> Soglia di rilevamento del silenzio (0..32767, default 30)

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

> Numero di thread della CPU da utilizzare, il valore predefinito è 0 (automatico)

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

> Temperatura per il riconoscimento vocale

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

> Incremento di temperatura

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

> Prompt da utilizzare per il modello

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

> Regex per sopprimere i token dall'output

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

> Dimensione del contesto audio

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

> Durata massima dell'audio

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

> Offset per l'audio

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

> Numero massimo di ultimi token di testo

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

> Lunghezza massima del segmento

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

> Avvia i timestamp da questo momento

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

> Penalità di lunghezza

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

> Soglia di entropia

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

> Soglia di probabilità logaritmica

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

> Soglia di assenza di parlato

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

> Percorso del database per i file dei dati delle preferenze

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

> Se includere i timestamp dei token nell'output

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

> Se dividere in base ai confini delle parole

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

> Se ignorare il silenzio (rovinerà i timestamp)

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

> Se mostrare l'avanzamento

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

> Se non sopprimere le righe vuote

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

> Se utilizzare un singolo segmento solamente

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

> Se stampare i token speciali

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

> .SYNOPSIS
    Restituisce la quantità totale di memoria, in megabyte, in un computer.
.DESCRIPTION
    Questo cmdlet ottiene la quantità totale di memoria, in megabyte, installata fisicamente in un computer specificato.
.PARAMETER ComputerName
    Specifica il nome del computer per cui si desidera recuperare la quantità totale di memoria.
    Se viene omesso il parametro ComputerName, il valore predefinito è il computer locale.
.EXAMPLE
    Get-SystemMemory
.EXAMPLE
    Get-SystemMemory -ComputerName Server01
    Questo comando ottiene la quantità di memoria installata nel computer Server01.

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

> Usa la strategia di campionamento beam search

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

> Tipo di modello Whisper da utilizzare, predefinito a LargeV3Turbo

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

> 1
00:00:00,000 --> 00:00:05,000
Questo è un esempio di sottotitolo.

2
00:00:05,000 --> 00:00:10,000
Ecco un altro sottotitolo per mostrare il formato SRT.

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

> Restituisce oggetti invece di stringhe

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

> Se utilizzare la cattura audio del desktop anziché l'ingresso del microfono

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

> Utilizzare sia il computer desktop che il dispositivo di registrazione

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

> Utilizza impostazioni alternative memorizzate nella sessione per le preferenze dell'IA, come lingua, raccolte di immagini, ecc.

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

> Cancella le impostazioni alternative memorizzate nella sessione per le preferenze AI come Lingua, Raccolte immagini, ecc.

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

> Non utilizzare impostazioni alternative memorizzate nella sessione per le preferenze di IA come lingua, raccolte di immagini, ecc.

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

> Utilizza il rilevamento del silenzio per interrompere automaticamente la registrazione

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Show-FoundImagesInBrowser.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Update-AllImageMetaData.md)
