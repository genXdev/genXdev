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
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | Chemin du fichier audio ou vidéo à transcrire. Si non fourni, enregistre depuis le microphone. |
| `-AudioDevice` | String | — | — | Named | — | Nom du périphérique audio ou GUID (supporte les wildcards, sélectionne la première correspondance) |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Définit la langue de traduction. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Seuil de somme pour les horodatages des tokens, valeur par défaut de 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Nombre maximal de jetons par segment |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Durée maximale de silence avant l'arrêt automatique de l'enregistrement |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Seuil de détection du silence (0..32767 par défaut 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Nombre de threads CPU à utiliser, par défaut 0 (auto) |
| `-Temperature` | Single | — | — | Named | `0.5` | Température pour la reconnaissance vocale |
| `-TemperatureInc` | Single | — | — | Named | — | Incrément de température |
| `-Prompt` | String | — | — | Named | — | Invite à utiliser pour le modèle |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Taille du contexte audio |
| `-MaxDuration` | Object | — | — | Named | — | Durée maximale de l'audio |
| `-Offset` | Object | — | — | Named | — | Décalage pour l'audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Nombre maximal de derniers jetons de texte |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Longueur maximale de segment |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Single | — | — | Named | — | Pénalité de longueur |
| `-EntropyThreshold` | Single | — | — | Named | — | Seuil d'entropie |
| `-LogProbThreshold` | Single | — | — | Named | — | Seuil de probabilité logarithmique |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Aucun seuil de parole |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Whether to include token timestamps in the output |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Whether to split on word boundaries |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Whether to ignore silence (will mess up timestamps) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Afficher la progression |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Whether to use single segment only |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Whether to print special tokens |
| `-NoContext` | SwitchParameter | — | — | Named | — | N'utilisez pas de contexte |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Utiliser la stratégie d'échantillonnage par faisceau |
| `-ModelType` | String | — | — | Named | — | Type de modèle Whisper à utiliser, par défaut LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
Bonjour le monde

2
00:00:05,000 --> 00:00:08,000
Ceci est une démonstration |
| `-PassThru` | SwitchParameter | — | — | Named | — | Renvoie des objets au lieu de chaînes de caractères |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Utilisez à la fois l'ordinateur de bureau et l'appareil d'enregistrement |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |
| `-VOX` | SwitchParameter | — | — | Named | — | Utiliser la détection de silence pour arrêter automatiquement l'enregistrement |

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)
