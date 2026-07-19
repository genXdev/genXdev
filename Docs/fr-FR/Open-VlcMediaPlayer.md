# Open-VlcMediaPlayer

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlc

## Synopsis

> Lance et contrôle le lecteur multimédia VLC avec des options de configuration étendues.

## Description

Cette fonction fournit une interface complète pour lancer et contrôler le lecteur multimédia VLC avec prise en charge du positionnement des fenêtres, de la sélection de moniteur, des paramètres de lecture, des filtres audio et vidéo, de la gestion des sous-titres, de la prise en charge de plusieurs langues, des paramètres de proxy réseau et des options de performances avancées. La fonction peut installer automatiquement VLC s'il n'est pas présent et offre une personnalisation poussée pour les scénarios de guide de lecture multimédia. Elle s'intègre de manière transparente avec le système de gestion des fenêtres GenXdev et prend en charge l'automatisation des entrées clavier via la fonctionnalité Send-Key.

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | Le(s) fichier(s) média ou l'URL à ouvrir dans VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | La largeur initiale de la fenêtre |
| `-Height` | Int32 | — | — | 2 | `-1` | La hauteur initiale de la fenêtre |
| `-X` | Int32 | — | — | 3 | `-999999` | La position X initiale de la fenêtre |
| `-Y` | Int32 | — | — | 4 | `-999999` | La position Y initiale de la fenêtre |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Frappes à envoyer à la fenêtre du lecteur VLC, voir la documentation de l'applet de commande GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi de touches à VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Délai entre différentes chaînes d'entrée en millisecondes lors de l'envoi de touches à VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Maintenir le focus clavier sur la fenêtre VLC après l'envoi des touches |
| `-Monitor` | Int32 | — | — | Named | `-1` | L'écran à utiliser, 0 = par défaut, -1 signifie ignorer |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placer la fenêtre sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre en haut de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre au centre de l'écran |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envoie F11 à la fenêtre |
| `-PassThru` | SwitchParameter | — | — | Named | — | Renvoie l'assistant fenêtre pour chaque processus |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell après avoir ouvert VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0 Opens a video file in fullscreen mode on the primary monitor for immersive viewing experience.

```powershell
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.
```

### vlc "video.mp4" -fs -m 0 Short form using aliases to open video fullscreen on monitor 0 with minimal typing required.

```powershell
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.
```

### Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English" Opens a movie with external subtitles and specific audio language for enhanced viewing with captions.

```powershell
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
```

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
