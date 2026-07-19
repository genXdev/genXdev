# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> Recherche des fichiers image et des métadonnées dans des répertoires spécifiés avec des capacités de filtrage et un affichage de galerie optionnel basé sur un navigateur.

## Description

Recherche les fichiers image (jpg, jpeg, png, gif, bmp, webp, tiff, tif) dans le répertoire spécifié et ses sous-répertoires. Pour chaque image, vérifie les fichiers de métadonnées associés description.json, keywords.json, people.json et objects.json. Peut filtrer les images en fonction de correspondances de mots-clés, de reconnaissance de personnes et de détection d'objets, puis retourner les résultats sous forme d'objets. Utilisez -ShowInBrowser pour afficher les résultats dans une disposition en maçonnerie basée sur un navigateur.

Logique des paramètres :
- Pour chaque type de paramètre (Mots-clés, Personnes, Objets, etc.) : utilise la logique OU
  Exemple : -Keywords "chat","chien" trouve les images avec SOIT chat SOIT chien
- Entre différents types de paramètres : utilise la logique ET
  Exemple : -Keywords "chat" -People "Jean" trouve les images avec chat ET Jean
- Paramètres de plage EXIF : fournissez les valeurs [min, max] pour filtrer les plages
- Paramètres de chaîne : prennent en charge la correspondance par wildcard avec * et ?

La fonction recherche dans les répertoires d'images et examine les flux de données alternatifs contenant des métadonnées au format JSON. Elle peut faire correspondre des mots-clés à l'aide de motifs wildcard, filtrer pour des personnes spécifiques et rechercher des objets détectés. Par défaut, retourne des objets de données d'image. Utilisez -ShowInBrowser pour afficher dans un navigateur web.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Correspondra à n'importe lequel de tous les types de métadonnées possibles. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Tableau de chemins de répertoires pour rechercher des images |
| `-Language` | String | — | — | Named | — | Langue pour les descriptions et mots-clés. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ('Le texte de description à rechercher, les caractères génériques ' +
                'autorisés.') |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | Personnes à rechercher, caractères génériques autorisés. |
| `-Objects` | String[] | — | — | Named | `@()` | Objets à rechercher, caractères génériques autorisés. |
| `-Scenes` | String[] | — | — | Named | `@()` | Catégories de scènes à rechercher, avec wildcards autorisées. |
| `-PictureType` | String[] | — | — | Named | `@()` | Type d'image pour le filtrage (par exemple, 'journée', 'soirée', 'intérieur', etc). Prend en charge les caractères génériques. |
| `-StyleType` | String[] | — | — | Named | `@()` | Type de style à filtrer (par exemple, 'décontracté', 'formel', etc.). Accepte les caractères génériques. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Humeur générale pour filtrer (par exemple, « calme », « joyeux », « triste », etc.). Prend en charge les caractères génériques. |
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
| `-KeysToSend` | String[] | — | — | Named | — | ('Frappes à envoyer à la fenêtre du navigateur, ' +
                'voir la documentation de l’applet de commande GenXdev\Send-Key') |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêcher le retour du focus clavier à PowerShell après l'envoi de touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Maj+Entrée au lieu d'Entrée lors de l'envoi de touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ('Délai entre différentes chaînes d'entrée ' +
                'en millisecondes lors de l'envoi des touches') |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-Monitor` | Int32 | — | — | Named | `-2` | ('Le moniteur à utiliser, 0 = par défaut, -1 = ignorer, ' +
                '-2 = Moniteur secondaire configuré, par défaut ' +
                "`Global:DefaultSecondaryMonitor` ou 2 si introuvable)" |
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
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne les données d'image sous forme d'objets. Lorsqu'il est utilisé avec 
'-ShowInBrowser, affiche la galerie et retourne 
les objets. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimez les bordures et la barre de titre des fenêtres pour un aspect plus épuré |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur côte à côte avec PowerShell sur le même moniteur |
| `-Interactive` | SwitchParameter | — | — | Named | — | ('Se connectera au navigateur et ajoutera des ' +
                'boutons supplémentaires comme Modifier et Supprimer. Efficace uniquement lorsqu'il est utilisé avec ' +
                '-ShowInBrowser.') |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Force` | SwitchParameter | — | — | Named | — | ('Forcer l'activation du port de débogage, arrêtant les ' +
                'navigateurs existants si nécessaire') |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | S'ouvre dans Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | ('S'ouvre dans Microsoft Edge ou Google Chrome, ' +
                'selon le navigateur par défaut') |
| `-Firefox` | SwitchParameter | — | — | Named | — | S'ouvre dans Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utilisez le navigateur géré par Playwright au lieu du navigateur installé sur le système d'exploitation |
| `-Webkit` | SwitchParameter | — | — | Named | — | ('Ouvre le navigateur WebKit géré par Playwright. ' +
                'Implique -PlayWright') |
| `-Headless` | SwitchParameter | — | — | Named | — | Exécutez le navigateur sans fenêtre visible |
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
| `-NewWindow` | SwitchParameter | — | — | Named | — | « Ne réutilisez pas la fenêtre de navigateur existante, créez-en plutôt une nouvelle. » |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('Généré uniquement le HTML au lieu de ' +
                'l\'afficher dans un navigateur.') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Afficher uniquement les images dans un rectangle arrondi, sans texte en dessous. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ('Utiliser des paramètres alternatifs stockés dans la session pour les préférences IA ' +
                'comme la langue, les collections d'images, etc.) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer les paramètres alternatifs stockés dans la session pour les préférences IA comme la Langue, les collections d'Images, etc. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | N'utilisez pas les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Faire défiler automatiquement la page de ce nombre de pixels par seconde (null pour désactiver) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animer les rectangles (objets/faces) dans la plage visible, en cyclant toutes les 300 ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forcer la mise en page à une seule colonne (centrée, 1/3 de la largeur de l'écran) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Préfixe à ajouter avant chaque chemin d’image (ex. pour les URLs distantes) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | ('Ratio de confiance minimum (0.0-1.0) pour filtrer les ' +
                'personnes, scènes et objets par confiance. Retourne uniquement les ' +
                'données pour les personnes, scènes et objets ayant une confiance ' +
                'supérieure ou égale à cette valeur.') |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
