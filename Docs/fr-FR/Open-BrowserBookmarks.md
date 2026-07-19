# Open-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `sites

## Synopsis

> Ouvre les signets du navigateur qui correspondent aux critères de recherche spécifiés.

## Description

Recherche les marque-pages dans Microsoft Edge, Google Chrome et Mozilla Firefox en fonction des requêtes de recherche fournies. Ouvre les marque-pages correspondants dans le navigateur sélectionné avec des paramètres de fenêtre et des modes de navigateur configurables.

Cette fonction fournit une interface complète pour trouver et ouvrir les marque-pages du navigateur avec des options de filtrage et d'affichage avancées. Elle prend en charge plusieurs critères de recherche et peut ouvrir les résultats dans n'importe quel navigateur installé avec une personnalisation étendue du positionnement et du comportement de la fenêtre.

## Syntax

```powershell
Open-BrowserBookmarks [[-Queries] <String[]>] [[-Count] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Termes de recherche pour filtrer les signets |
| `-Count` | Int32 | — | — | 1 | `50` | Nombre maximum d'URLs à ouvrir |
| `-Edge` | SwitchParameter | — | — | Named | — | Sélectionner dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Sélectionner dans Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Sélectionner dans Firefox |
| `-Monitor` | Int32 | — | — | Named | `-1` | Le moniteur à utiliser, 0 = par défaut, -1 = ignorer, -2 = moniteur secondaire configuré |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Soit mettre la fenêtre en plein écran sur un moniteur différent de Powershell, soit l'afficher côte à côte avec Powershell sur le même moniteur |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer l'activation du port de débogage, arrêter les navigateurs existants si nécessaire |
| `-FullScreen` | SwitchParameter | — | — | Named | — | S'ouvre en mode plein écran |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show the browser window (not 1d or hidden) |
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
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-language HTTP header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimiser la fenêtre après le positionnement |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne pas réutiliser la fenêtre de navigateur existante, mais en créer une nouvelle à la place |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utiliser le navigateur géré par Playwright au lieu du navigateur installé sur le système d'exploitation |
| `-Webkit` | SwitchParameter | — | — | Named | — | Ouvre le navigateur WebKit géré par Playwright. Implique -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Exécutez le navigateur sans fenêtre visible |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactiver le bloqueur de pop-ups |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle lors de l'envoi de touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêcher le retour du focus clavier à PowerShell après l'envoi de touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Envoyer Maj+Entrée au lieu d'Entrée normal pour les sauts de ligne |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre l'envoi de différentes séquences de touches en millisecondes |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre du navigateur |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Open-BrowserBookmarks -Queries "github" -Edge -Count 5

```powershell
Open-BrowserBookmarks -Queries "github" -Edge -Count 5
```

Recherche les signets contenant "github" dans Microsoft Edge et ouvre les 5 premiers résultats dans le navigateur par défaut.

### sites gh -e -c 5

```powershell
sites gh -e -c 5
```

Identique à ce qui précède en utilisant des alias - recherche les signets Edge pour "gh" et ouvre 5 résultats dans le navigateur par défaut.

### Open-BrowserBookmarks -Queries "development", "tools" -Chrome -Firefox -Left -Count 10

```powershell
Open-BrowserBookmarks -Queries "development", "tools" -Chrome -Firefox -Left -Count 10
```

Recherche dans les marque-pages Chrome "development" et "tools", ouvre les 10 premiers résultats dans Firefox positionné sur le côté gauche de l'écran.

## Related Links

- [Open-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
