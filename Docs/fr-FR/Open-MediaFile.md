# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> Ouvre et lit des fichiers multimédia avec le lecteur VLC, offrant des options avancées de filtrage et de configuration.

## Description

Cette fonction recherche des fichiers média selon des motifs, crée une liste de lecture et lance le lecteur multimédia VLC avec des options de configuration complètes. Elle prend en charge les vidéos, fichiers audio et images, avec installation automatique de VLC si nécessaire. La fonction offre un contrôle étendu sur le comportement de lecture, le positionnement de la fenêtre, les paramètres audio/vidéo et la gestion des sous-titres.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Nom de fichier ou modèle à rechercher. Par défaut, '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Rechercher sur tous les lecteurs disponibles |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | N'entrez pas dans les sous-répertoires |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Suivre les liens symboliques et les jonctions lors du parcours de répertoires. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour continuer à remonter l'arborescence lors de recherches relatives, tant qu'aucun élément n'est trouvé. 0 signifie désactivé. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Taille maximale du fichier en octets à inclure dans les résultats. 0 signifie illimité. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Taille minimale du fichier en octets à inclure dans les résultats. 0 signifie aucune taille minimale. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Inclure uniquement les fichiers modifiés après cette date/heure (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | N'inclure que les fichiers modifiés avant cette date/heure (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Attributs de fichier à ignorer (par exemple, Système, Caché ou Aucun). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Nom du fichier ou motif à rechercher à partir de l'entrée du pipeline. Par défaut "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Chemin de la playlist pour enregistrer les fichiers média. S'il n'est pas spécifié, la playlist sera enregistrée dans un répertoire temporaire. |
| `-Width` | Int32 | — | — | 1 | `-1` | La largeur initiale de la fenêtre |
| `-Height` | Int32 | — | — | 2 | `-1` | La hauteur initiale de la fenêtre |
| `-X` | Int32 | — | — | 3 | `-999999` | La position X initiale de la fenêtre |
| `-Y` | Int32 | — | — | 4 | `-999999` | La position Y initiale de la fenêtre |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Frappes à envoyer à la fenêtre du lecteur VLC, voir la documentation de l'applet de commande GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Degré maximal de parallélisme pour les tâches d'annuaire |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Facultatif : délai d'expiration en secondes |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi de touches à VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre différentes chaînes d'entrée en millisecondes lors de l'envoi de touches à VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Maintenir le focus clavier sur la fenêtre VLC après l'envoi des touches |
| `-Monitor` | Int32 | — | — | Named | `-2` | L'écran à utiliser, 0 = par défaut, -1 signifie ignorer |
| `-AspectRatio` | String | — | — | Named | — | Rapport hauteur/largeur source |
| `-Crop` | String | — | — | Named | — | Rognage vidéo |
| `-SubtitleFile` | String | — | — | Named | — | I could use a subtitle file |
| `-SubtitleScale` | Int32 | — | — | Named | — | Facteur d'échelle du texte des sous-titres |
| `-SubtitleLanguage` | String | — | — | Named | — | Langue des sous-titres |
| `-AudioLanguage` | String | — | — | Named | — | Langue audio |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Langue audio préférée |
| `-HttpProxy` | String | — | — | Named | — | Proxy HTTP |
| `-HttpProxyPassword` | String | — | — | Named | — | Mot de passe du proxy HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Niveau de verbosité |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Comportement des sous-répertoires |
| `-IgnoredExtensions` | String | — | — | Named | — | Extensions ignorées |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Chemin d'accès à l'exécutable VLC |
| `-ReplayGainMode` | String | — | — | Named | — | Mode de gain de reprise |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Gain de préamplification Replay |
| `-ForceDolbySurround` | String | — | — | Named | — | Détection forcée du Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Filtres audio |
| `-Visualization` | String | — | — | Named | — | Visualisations audio |
| `-Deinterlace` | String | — | — | Named | — | Désentrelacement |
| `-DeinterlaceMode` | String | — | — | Named | — | Mode de désentrelacement |
| `-VideoFilters` | String[] | — | — | Named | — | Module de filtre vidéo |
| `-VideoFilterModules` | String[] | — | — | Named | — | Modules de filtrage vidéo |
| `-Modules` | String[] | — | — | Named | — | Modules |
| `-AudioFilterModules` | String[] | — | — | Named | — | Modules de filtrage audio |
| `-AudioVisualization` | String | — | — | Named | — | Mode de visualisation audio |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Langue de sous-titrage préférée |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Extensions de fichier ignorées |
| `-Arguments` | String | — | — | Named | — | Arguments supplémentaires |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Inclure les flux de données alternatifs dans les résultats de recherche |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | N'inclure que les fichiers vidéo dans la liste de lecture |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Inclure uniquement les fichiers audio dans la playlist |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Only include pictures in the playlist |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Ajoutez également des vidéos à la playlist |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Additionally include audio files in the playlist |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Incluez également des images dans la playlist |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placer la fenêtre sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre en haut de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre au centre de l'écran |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envoie F11 à la fenêtre |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Toujours au premier plan |
| `-Random` | SwitchParameter | — | — | Named | — | Lire les fichiers aléatoirement pour toujours |
| `-Loop` | SwitchParameter | — | — | Named | — | Repeat all |
| `-Repeat` | SwitchParameter | — | — | Named | — | Répéter l'élément actuel |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Démarré en pause |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Jouer et quitter |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Désactiver l'audio |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Désactiver les sous-titres |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Mise à l'échelle automatique de la vidéo |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Augmenter la priorité du processus |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Activer l'étirement temporel audio |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ouvrir une nouvelle instance du lecteur VLC |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Activer le mode fond d'écran vidéo |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Activer l'étirement temporel audio |
| `-Close` | SwitchParameter | — | — | Named | — | Ferme la fenêtre du lecteur VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Soit mettre la fenêtre en plein écran sur un moniteur différent de Powershell, soit l'afficher côte à côte avec Powershell sur le même moniteur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mettre la fenêtre VLC au premier plan après l'ouverture |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Amener la fenêtre de VLC au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximisez la fenêtre |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaure le focus de la fenêtre PowerShell après l'ouverture de VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Obtient ou définit la sensibilité à la casse pour les fichiers et répertoires |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour le parcours de répertoires. 0 signifie illimité. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Exclure les fichiers ou répertoires correspondant à ces modèles de caractères génériques (par exemple, *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne les fichiers trouvés par la recherche |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Retourne les fichiers trouvés par la recherche sans ouvrir VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Renvoie l'assistant fenêtre pour chaque processus |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Ouvre tous les fichiers multimédia du répertoire courant en utilisant les paramètres par défaut de VLC.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Ouvre uniquement les fichiers image du dossier Images en mode plein écran en utilisant l'alias 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Ouvre les fichiers vidéo avec la lecture en boucle activée via l'alias 'media'.

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
