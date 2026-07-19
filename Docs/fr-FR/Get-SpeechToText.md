# Get-SpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convertit les fichiers audio en texte en utilisant le modèle de reconnaissance vocale Whisper d'OpenAI.

## Description

Traite les fichiers audio et convertit la parole en texte à l'aide de la bibliothèque Whisper.NET, qui implémente le système de reconnaissance automatique de la parole (ASR) Whisper d'OpenAI. Elle prend en charge plusieurs langues, des capacités de traduction et divers réglages de qualité de transcription.

## Syntax

```powershell
Get-SpeechToText [-Input] <Object> [-ModelFileDirectoryPath <string>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-NoSpeechThreshold <float>] [-Prompt <string>] [-SuppressRegex <string>] [-TokenTimestampsSumThreshold <float>] [-MaxTokensPerSegment <int>] [-AudioContextSize <int>] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-ModelType <GgmlType>] [-Passthru] [-WithTokenTimestamps] [-SplitOnWord] [-WithTranslate] [-WithProgress] [-DontSuppressBlank] [-SingleSegmentOnly] [-PrintSpecialTokens] [-NoContext] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Chemin du répertoire des fichiers du modèle |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Chemin du fichier audio, objet FileInfo ou tout format audio supporté par Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Définit la langue d'entrée à détecter, par défaut 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Définit la langue de sortie |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Température pour détection de la parole |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incrément de température |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Aucun seuil de parole |
| `-Prompt` | String | — | — | Named | — | Invite à utiliser pour le modèle |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Seuil de somme pour les horodatages des tokens, valeur par défaut de 0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nombre maximal de jetons par segment |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Taille du contexte audio |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Durée maximale de l'audio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Décalage pour l'audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nombre maximal de derniers jetons de texte |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Longueur maximale de segment |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Pénalité de longueur |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Seuil d'entropie |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Seuil de probabilité logarithmique |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Type de modèle Whisper à utiliser, par défaut LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Renvoie des objets au lieu de chaînes de caractères |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Whether to include token timestamps |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Whether to split on word boundaries |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Afficher la progression |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Whether to use single segment only |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Whether to print special tokens |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de contexte |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Utiliser la stratégie d'échantillonnage par faisceau |

## Examples

### Example 1

```powershell
Get-SpeechToText -Input "C:\audio\recording.wav"
```

Transcrit un fichier audio en texte en utilisant les paramètres par défaut.

### Example 2

```powershell
Get-ChildItem "C:\audio\*.wav" | Get-SpeechToText
```

Transcrit tous les fichiers WAV d'un répertoire.

### Example 3

```powershell
Get-SpeechToText -Input "audio.mp3" -LanguageIn "es" -WithTranslate
```

Transcrit l'audio espagnol et le traduit en anglais.

### Example 4

```powershell
Get-SpeechToText -Input "recording.wav" -Passthru -WithTokenTimestamps
```

Renvoie des objets SegmentData avec des informations de timing précises.

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
