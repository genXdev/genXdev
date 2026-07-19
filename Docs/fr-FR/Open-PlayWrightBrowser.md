# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Lance un navigateur géré par Playwright avec un profil utilisateur persistant.

## Description

<details>
<summary><b>Expand description</b></summary>

Lance une instance de navigateur autonome alimentée par les binaires intégrés de Chromium, Firefox ou WebKit de Playwright — totalement indépendante de tout navigateur installé sur le système d'exploitation. Le navigateur utilise un profil utilisateur persistant stocké sous GenXdev AppData, de sorte que les cookies, le localStorage et les sessions survivent aux redémarrages.

Cette cmdlet remplace l'ancienne approche par port CDP/de débogage qui a cessé de fonctionner dans Chrome 136+. Au lieu de se connecter à un navigateur système via un port de débogage, Playwright gère directement son propre cycle de vie de navigateur.

Fonctionnalités clés :
- Profils persistants par type de navigateur (Chromium, Firefox, WebKit)
- Taille de la fenêtre d'affichage et position de la fenêtre configurables
- Mode sans tête pour l'automatisation
- Prise en charge du serveur proxy
- En-tête Accept-Language personnalisé
- Option de contexte incognito/privé
- Contrôle des extensions de navigateur
- Dimensionnement et positionnement de la fenêtre d'affichage via -Width, -Height, -Left, -Right, etc.
- Redémarrage forcé pour fermer l'instance existante et en démarrer une nouvelle

Le navigateur lancé ainsi que son contexte/page sont stockés dans $Global:GenXdevPlaywright pour être utilisés par d'autres cmdlets.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | Le moteur de navigateur à lancer : Chromium, Firefox ou WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Exécutez le navigateur sans fenêtre visible |
| `-Proxy` | String | — | — | Named | — | URL du serveur proxy (ex. http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Définir l'en-tête HTTP Accept-Language du navigateur |
| `-Width` | Int32 | — | — | Named | `-1` | Largeur initiale de la fenêtre en pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Hauteur initiale de la fenêtre d'affichage en pixels |
| `-Force` | SwitchParameter | — | — | Named | — | Fermer le navigateur existant et recommencer à neuf |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer la réaffichage de la boîte de dialogue de consentement à l'installation |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Accepter automatiquement l'installation de logiciels tiers (navigateurs Playwright) |
| `-Monitor` | Int32 | — | — | Named | `-1` | Le moniteur à utiliser, 0 = défaut, -1 = ignorer, -2 = moniteur secondaire configuré, par défaut $Global:DefaultSecondaryMonitor ou 2 si non trouvé |
| `-X` | Int32 | — | — | Named | `-999999` | La position initiale X de la fenêtre du navigateur web |
| `-Y` | Int32 | — | — | Named | `-999999` | Position Y initiale de la fenêtre du navigateur Web |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur sur le côté supérieur de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | {"response":"Place browser window in the center of the screen"} |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximise la fenêtre pour remplir tout l'écran |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionnez la fenêtre du navigateur soit en plein écran sur un moniteur différent de PowerShell, soit côte à côte avec PowerShell sur le même moniteur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimise la fenêtre après le positionnement |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-KeysToSend` | String[] | — | — | Named | — | Frappes à envoyer à la fenêtre, voir la documentation de l'applet de commande GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier sur la fenêtre cible lors de l'envoi des touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée lors de l'envoi des touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre les différentes chaînes d'entrée en millisecondes lors de l'envoi des touches |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne l'objet aide de fenêtre pour une manipulation ultérieure |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
