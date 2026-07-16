# Receive-RealTimeSpeechToText

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Chemin vers le fichier modèle |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Whether to use desktop audio capture instead of microphone |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | Whether to use both desktop audio capture and recording device simultaneously |
| `-AudioDevice` | String | — | — | Named | — | Utilisez à la fois l'ordinateur de bureau et l'appareil d'enregistrement |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Renvoie des objets au lieu de chaînes de caractères |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Whether to include token timestamps |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Seuil de somme pour les horodatages des tokens, valeur par défaut de 0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Whether to split on word boundaries |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nombre maximal de jetons par segment |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | Whether to ignore silence (will mess up timestamps) |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Durée maximale de silence avant l'arrêt automatique de l'enregistrement |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Seuil de détection du silence (0..32767 par défaut 30) |
| `-LanguageIn` | String | — | — | Named | — | Définit la langue d'entrée à détecter, par défaut 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Définit la langue de sortie |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Température pour détection de la parole |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Incrément de température |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-Prompt` | String | — | — | Named | — | Invite à utiliser pour le modèle |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Afficher la progression |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Taille du contexte audio |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Whether to NOT suppress blank lines |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Durée maximale de l'audio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Décalage pour l'audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Nombre maximal de derniers jetons de texte |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Whether to use single segment only |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Whether to print special tokens |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Longueur maximale de segment |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Pénalité de longueur |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Seuil d'entropie |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Seuil de probabilité logarithmique |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Aucun seuil de parole |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de contexte |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Utiliser la stratégie d'échantillonnage par faisceau |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Type de modèle Whisper à utiliser, par défaut Small |

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
