# Open-WolframAlphaQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qalpha

## Synopsis

> Ouvre une requête Wolfram Alpha dans un navigateur web.

## Description

Ouvre une ou plusieurs requêtes Wolfram Alpha dans un navigateur web. Prend en charge la sélection configurable du moniteur et les options du navigateur via des paramètres dynamiques. Fournit un contrôle complet du navigateur, y compris le positionnement, le redimensionnement et les capacités d'automatisation pour des workflows de calcul scientifique améliorés.

## Syntax

```powershell
Open-WolframAlphaQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La requête à exécuter. |
| `-Language` | String | — | — | 2 | — | La langue des résultats de recherche retournés |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | Le moniteur à utiliser, 0 = par défaut, -1 = supprimer, -2 = moniteur secondaire configuré, par défaut à -1, sans positionnement |
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
| `-AcceptLang` | String | — | — | Named | — | Set browser accept-language HTTP header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle lors de l'envoi des touches. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêcher le retour du focus clavier à PowerShell après l'envoi des touches. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Envoyer Maj+Entrée au lieu d'Entrée normal pour les sauts de ligne lors de l'envoi des touches. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre l'envoi de différentes séquences de touches en millisecondes. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne pas réutiliser la fenêtre de navigateur existante, mais en créer une nouvelle à la place |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne un objet [System.Diagnostics.Process] du processus du navigateur. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Ne pas ouvrir le navigateur web, renvoyer simplement l'URL |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Après avoir ouvert le navigateur web, retournez l'URL |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre du navigateur. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionner la fenêtre du navigateur soit en plein écran sur un moniteur différent de PowerShell, soit côte à côte avec PowerShell sur le même moniteur. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Enregistrer uniquement les paramètres dans les préférences persistantes sans affecter la session. |

## Examples

### Open-WolframAlphaQuery -Queries "mass of sun" -Monitor 0

```powershell
Open-WolframAlphaQuery -Queries "mass of sun" -Monitor 0
```

Opens a Wolfram Alpha query for the mass of the sun on the default monitor.

### qalpha "speed of light", "planck constant"

```powershell
qalpha "speed of light", "planck constant"
```

Ouvre plusieurs requêtes Wolfram Alpha en utilisant l'alias pour des calculs scientifiques rapides.

### "derivative of x^2" | Open-WolframAlphaQuery -Language "English" -FullScreen

```powershell
"derivative of x^2" | Open-WolframAlphaQuery -Language "English" -FullScreen
```

Ouvre une requête de calcul en mode plein écran avec préférence de langue anglaise
via l'entrée du pipeline.

## Related Links

- [Open-WolframAlphaQuery on GitHub](https://github.com/genXdev/genXdev)
