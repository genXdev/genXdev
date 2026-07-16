# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Correspondra à n'importe lequel de tous les types de métadonnées possibles. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Tableau de chemins de répertoires pour rechercher des images |
| `-Language` | String | — | — | Named | — | Langue pour les descriptions et mots-clés. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Le texte de description à rechercher, les caractères génériques sont autorisés. |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | Personnes à rechercher, caractères génériques autorisés. |
| `-Objects` | String[] | — | — | Named | `@()` | Objets à rechercher, caractères génériques autorisés. |
| `-Scenes` | String[] | — | — | Named | `@()` | Catégories de scènes à rechercher, avec wildcards autorisées. |
| `-PictureType` | String[] | — | — | Named | `@()` | Type d'image à filtrer (par exemple, 'daylight', 'evening', 'indoor', etc). Accepte les caractères génériques. |
| `-StyleType` | String[] | — | — | Named | `@()` | Type de style à filtrer (par exemple, 'décontracté', 'formel', etc.). Prend en charge les caractères génériques. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Ambiance générale à filtrer (par exemple, « calme », « joyeux », « triste », etc.). Prend en charge les caractères génériques. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter by camera make in image EXIF metadata. Supports wildcards. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filtrer par modèle d'appareil photo dans les métadonnées EXIF de l'image. Prend en charge les jokers. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Filtrer par plage de latitude GPS dans les métadonnées EXIF d'une image |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filter by GPS longitude range in image EXIF metadata. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Filtrer par plage d'altitude GPS dans les métadonnées EXIF de l'image (en mètres). |
| `-GeoLocation` | Double[] | — | — | Named | — | Coordonnées géographiques [latitude, longitude] à proximité desquelles effectuer la recherche. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Distance maximale en mètres depuis la localisation géographique pour rechercher des images. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Filter by exposure time range in image EXIF metadata (in seconds). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filtrer par plage d'ouverture (nombre F) dans les métadonnées EXIF de l'image. |
| `-MetaISO` | Int32[] | — | — | Named | — | Filter by ISO sensitivity range in image EXIF metadata. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Filtrer par plage de focale dans les métadonnées EXIF de l'image (en mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Filter by image width range in pixels from EXIF metadata. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter by image height range in pixels from EXIF metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Filtrer par date de prise de vue à partir des métadonnées EXIF. Peut être une plage de dates. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Title for the gallery |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Description for the gallery |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-language HTTP header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêcher le retour du focus clavier à PowerShell après l'envoi de touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée lors de l'envoi des touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre les différentes chaînes d'entrée en millisecondes lors de l'envoi des touches |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-Monitor` | Int32 | — | — | Named | `-2` | Le moniteur à utiliser, 0 = par défaut, -1 = ignorer, -2 = moniteur secondaire configuré, par défaut Global:DefaultSecondaryMonitor ou 2 si non trouvé |
| `-Width` | Int32 | — | — | Named | `-1` | La largeur initiale de la fenêtre du navigateur Web |
| `-Height` | Int32 | — | — | Named | `-1` | Hauteur initiale de la fenêtre du navigateur web |
| `-X` | Int32 | — | — | Named | `-999999` | La position initiale X de la fenêtre du navigateur web |
| `-Y` | Int32 | — | — | Named | `-999999` | Position Y initiale de la fenêtre du navigateur Web |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Integrer les images en base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Interrupteur pour désactiver le comportement de repli. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Interrupteur pour ignorer l'initialisation et la reconstruction de la base de données. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Rechercher sur tous les lecteurs disponibles |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | N'entrez pas dans les sous-répertoires |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Suivre les liens symboliques et les jonctions lors du parcours de répertoires. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour le parcours de répertoires. 0 signifie illimité. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profondeur de récursion maximale pour continuer à remonter l'arborescence lors de recherches relatives, tant qu'aucun élément n'est trouvé. 0 signifie désactivé. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Taille maximale du fichier en octets à inclure dans les résultats. 0 signifie illimité. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Taille minimale du fichier en octets à inclure dans les résultats. 0 signifie aucune taille minimale. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Inclure uniquement les fichiers modifiés après cette date/heure (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | N'inclure que les fichiers modifiés avant cette date/heure (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Attributs de fichier à ignorer (par exemple, Système, Caché ou Aucun). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filtrer les images contenant de la nudité. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filtrer les images qui contiennent du contenu explicite. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filtrer les images qui ne contiennent PAS de contenu explicite. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Affichez les résultats de recherche dans une galerie d'images basée sur le navigateur. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return image data as objects. When used with -ShowInBrowser, both displays the gallery and returns the objects. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimez les bordures et la barre de titre des fenêtres pour un aspect plus épuré |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur côte à côte avec PowerShell sur le même moniteur |
| `-Interactive` | SwitchParameter | — | — | Named | — | Se connecte au navigateur et ajoute des boutons supplémentaires comme Modifier et Supprimer. Efficace uniquement lorsqu'il est utilisé avec -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer l'activation du port de débogage, arrêter les navigateurs existants si nécessaire |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | S'ouvre dans Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | S'ouvre dans Firefox |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-FullScreen` | SwitchParameter | — | — | Named | — | S'ouvre en mode plein écran |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur sur le côté supérieur de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | {"response":"Place browser window in the center of the screen"} |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Empêcher le chargement des extensions de navigateur |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactiver le bloqueur de pop-ups |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne pas réutiliser la fenêtre de navigateur existante, mais en créer une nouvelle à la place |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Site Web</title>
</head>
<body>
    <header>
        <h1>Bienvenue sur Mon Site Web</h1>
        <nav>
            <ul>
                <li><a href="#home">Accueil</a></li>
                <li><a href="#about">À Propos</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="home">
            <p>Ceci est un exemple de site web responsive.</p>
        </section>
        <section id="about">
            <p>Nous créons des sites web modernes et accessibles.</p>
        </section>
        <section id="contact">
            <p>Contactez-nous pour plus d'informations.</p>
        </section>
    </main>
    <footer>
        <p>&copy; 2025 Mon Site Web. Tous droits réservés.</p>
    </footer>
</body>
</html> |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Affichez uniquement les images dans un rectangle arrondi, sans texte en dessous. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Faire défiler automatiquement la page de ce nombre de pixels par seconde (null pour désactiver) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animer les rectangles (objets/faces) dans la plage visible, en cyclant toutes les 300 ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forcer la mise en page à une seule colonne (centrée, 1/3 de la largeur de l'écran) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Préfixe à ajouter avant chaque chemin d’image (ex. pour les URLs distantes) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Ratio de confiance minimal (0,0-1,0) pour filtrer les personnes, scènes et objets par confiance. Ne retourne que les données pour les personnes, scènes et objets dont la confiance est supérieure ou égale à cette valeur. |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
