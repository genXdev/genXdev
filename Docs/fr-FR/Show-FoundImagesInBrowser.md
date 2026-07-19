# Show-FoundImagesInBrowser

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `showfoundimages

## Synopsis

> Displays image search results in a masonry layout web gallery.

## Description

Prend les résultats de recherche d'images et les affiche dans une disposition en maçonnerie basée sur le navigateur.
Peut fonctionner en mode interactif avec des capacités d'édition et de suppression, ou en mode
affichage simple. Accepte des objets de données d'image provenant généralement de Find-Image et les
rend avec des infobulles au survol montrant des métadonnées comme la reconnaissance faciale, la détection
d'objets et les données de classification de scène.

## Syntax

```powershell
Show-FoundImagesInBrowser [[-InputObject] <Object[]>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-OnlyReturnHtml] [-PassThru] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object[] | — | ✅ (ByValue) | 0 | `@()` | Objets de données d'image à afficher dans la galerie. |
| `-Interactive` | SwitchParameter | — | — | Named | — | Se connectera au navigateur et ajoutera des boutons supplémentaires comme Modifier et Supprimer |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Title for the gallery |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Survolez les images pour voir les données de reconnaissance faciale et de détection d'objets |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer l'activation du port de débogage, arrêter les navigateurs existants si nécessaire |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | S'ouvre dans Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | S'ouvre dans Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Utilise le navigateur WebKit géré par Playwright |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-Monitor` | Int32 | — | — | Named | `-2` | Le moniteur à utiliser, 0 = par défaut, -1 = ignorer, -2 = moniteur secondaire configuré, par défaut Global:DefaultSecondaryMonitor ou 2 si non trouvé |
| `-FullScreen` | SwitchParameter | — | — | Named | — | S'ouvre en mode plein écran |
| `-Width` | Int32 | — | — | Named | `-1` | La largeur initiale de la fenêtre du navigateur Web |
| `-Height` | Int32 | — | — | Named | `-1` | Hauteur initiale de la fenêtre du navigateur web |
| `-X` | Int32 | — | — | Named | `-999999` | La position initiale X de la fenêtre du navigateur web |
| `-Y` | Int32 | — | — | Named | `-999999` | Position Y initiale de la fenêtre du navigateur Web |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur sur le côté supérieur de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | {"response":"Place browser window in the center of the screen"} |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Empêcher le chargement des extensions de navigateur |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactiver le bloqueur de pop-ups |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-language HTTP header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Créer une nouvelle fenêtre de navigateur au lieu de réutiliser une fenêtre existante |
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
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Incorporer les images en tant qu'URL de données base64 au lieu d'URL file:// pour une meilleure portabilité. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Affichez uniquement les images dans un rectangle arrondi, sans texte en dessous. |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier sur la fenêtre cible lors de l'envoi des touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée lors de l'envoi des touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre les différentes chaînes d'entrée en millisecondes lors de l'envoi des touches |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimez les bordures et la barre de titre des fenêtres pour un aspect plus épuré |
| `-PassThru` | SwitchParameter | — | — | Named | — | {
  "window": {
    "open": function(url, name, features) {},
    "close": function() {},
    "focus": function() {},
    "blur": function() {},
    "resizeTo": function(width, height) {},
    "resizeBy": function(deltaWidth, deltaHeight) {},
    "moveTo": function(x, y) {},
    "moveBy": function(deltaX, deltaY) {},
    "scrollTo": function(x, y) {},
    "scrollBy": function(deltaX, deltaY) {},
    "print": function() {},
    "getComputedStyle": function(element, pseudoElt) {},
    "matchMedia": function(mediaQueryString) {},
    "btoa": function(stringToEncode) {},
    "atob": function(encodedData) {}
  }
} |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur côte à côte avec PowerShell sur le même moniteur |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Faire défiler automatiquement la page de ce nombre de pixels par seconde (null pour désactiver) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animer les rectangles (objets/faces) dans la plage visible, en cyclant toutes les 300 ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forcer la mise en page à une seule colonne (centrée, 1/3 de la largeur de l'écran) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Préfixe à ajouter avant chaque chemin d’image (ex. pour les URLs distantes) |

## Examples

### Show-FoundImagesInBrowser -InputObject $images Displays the image results in a simple web gallery.

```powershell
Show-FoundImagesInBrowser -InputObject $images
Displays the image results in a simple web gallery.
```

### Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos" Displays images in interactive mode with edit/delete buttons.

```powershell
Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos"
Displays images in interactive mode with edit/delete buttons.
```

### showfoundimages $images -Private -FullScreen Opens the gallery in private browsing mode in fullscreen.

```powershell
showfoundimages $images -Private -FullScreen
Opens the gallery in private browsing mode in fullscreen.
```

## Related Links

- [Show-FoundImagesInBrowser on GitHub](https://github.com/genXdev/genXdev)
