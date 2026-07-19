# Open-GameOfLife

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `gameoflife, `conway

## Synopsis

> Ouvre la simulation du Jeu de la vie de Conway dans un navigateur web.

## Description

Ouvre une simulation interactive du Jeu de la Vie de Conway dans une fenêtre de navigateur web
avec des options étendues de positionnement et de configuration. Le Jeu de la Vie de Conway est
un automate cellulaire conçu par le mathématicien John Conway en 1970, constitué
d'une grille de cellules pouvant être dans l'un des deux états : vivante ou morte.

Cette fonction offre un contrôle complet du navigateur, notamment le positionnement
de la fenêtre, la sélection du navigateur, la navigation privée et des capacités
d'interaction automatisée. La simulation s'exécute à l'adresse https://conway.genxdev.net/ et prend en charge
divers modes d'interaction.

## Syntax

```powershell
Open-GameOfLife [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | La préférence linguistique pour l'interface du navigateur et la localisation du contenu |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer l'activation du port de débogage, arrêter les navigateurs existants si nécessaire |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | S'ouvre dans Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | S'ouvre dans Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utiliser le navigateur géré par Playwright au lieu du navigateur installé sur le système d'exploitation |
| `-Webkit` | SwitchParameter | — | — | Named | — | Ouvre le navigateur WebKit géré par Playwright. Implique -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Exécutez le navigateur sans fenêtre visible |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-Monitor` | Int32 | — | — | Named | `-2` | Le moniteur à utiliser, 0 = par défaut, -1 = supprimer, -2 = moniteur secondaire configuré, par défaut à -1, sans positionnement |
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
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle lors de l'envoi de frappes au clavier vers la fenêtre du navigateur. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêcher le retour du focus clavier à PowerShell après l'envoi de frappes au clavier dans la fenêtre du navigateur. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée standard pour les sauts de ligne lors de l'envoi des frappes au navigateur. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre l'envoi de différentes séquences de touches en millisecondes. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell après l'ouverture du navigateur. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne pas réutiliser la fenêtre de navigateur existante, mais en créer une nouvelle à la place |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne un objet [System.Diagnostics.Process] du processus du navigateur |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Ne pas ouvrir le navigateur web, renvoyer simplement l'URL |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Après avoir ouvert le navigateur web, retournez l'URL |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Ne pas ouvrir en mode plein écran |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Afficher les contrôles du navigateur |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre du navigateur. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionner la fenêtre du navigateur soit en plein écran sur un moniteur différent de PowerShell, soit côte à côte avec PowerShell sur le même moniteur. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser le mode session uniquement pour le profil du navigateur (cookies et données effacés à la fermeture). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer les données de session/profil du navigateur avant d'ouvrir. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ignorer la restauration de la session précédente du navigateur. |

## Examples

### Open-GameOfLife -Monitor 1 -FullScreen

```powershell
Open-GameOfLife -Monitor 1 -FullScreen
```

Ouvre le Jeu de la Vie de Conway en mode plein écran sur le moniteur 1.

### Open-GameOfLife -Language "French" -Chrome -Private

```powershell
Open-GameOfLife -Language "French" -Chrome -Private
```

Ouvre le Jeu de la Vie en français avec Chrome en mode privé.

### gameoflife -m 0 -app

```powershell
gameoflife -m 0 -app
```

Ouvre le Jeu de la Vie sur le moniteur principal en mode application en utilisant l'alias.

### conway -Edge -Left -Width 800 -Height 600

```powershell
conway -Edge -Left -Width 800 -Height 600
```

Ouvre le Jeu de la Vie de Conway dans Microsoft Edge, positionné sur le côté gauche avec des dimensions spécifiques.

## Related Links

- [Open-GameOfLife on GitHub](https://github.com/genXdev/genXdev)
