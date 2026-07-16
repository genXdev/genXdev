# Open-IMDBQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `imdb

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-IMDBQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The search terms to query on IMDB |
| `-Language` | String | — | — | 1 | — | La langue des résultats de recherche retournés |
| `-Monitor` | Int32 | — | — | Named | `-1` | Le moniteur à utiliser, 0 = par défaut, -1 signifie ignorer, -2 = moniteur secondaire configuré, par défaut -1 |
| `-Width` | Int32 | — | — | Named | `-1` | La largeur initiale de la fenêtre du navigateur Web |
| `-Height` | Int32 | — | — | Named | `-1` | Hauteur initiale de la fenêtre du navigateur web |
| `-X` | Int32 | — | — | Named | `-999999` | La position initiale X de la fenêtre du navigateur web |
| `-Y` | Int32 | — | — | Named | `-999999` | Position Y initiale de la fenêtre du navigateur Web |
| `-AcceptLang` | String | — | — | Named | — | Set browser accept-language HTTP header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-Private` | SwitchParameter | — | — | Named | — | S'ouvre en mode Navigation privée |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer l'activation du port de débogage, arrêter les navigateurs existants si nécessaire |
| `-Edge` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | S'ouvre dans Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Ouvre dans Microsoft Edge ou Google Chrome, selon le navigateur par défaut |
| `-Firefox` | SwitchParameter | — | — | Named | — | S'ouvre dans Firefox |
| `-All` | SwitchParameter | — | — | Named | — | S'ouvre dans tous les navigateurs modernes enregistrés |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placez la fenêtre du navigateur sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre du navigateur sur le côté supérieur de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | {"response":"Place browser window in the center of the screen"} |
| `-FullScreen` | SwitchParameter | — | — | Named | — | S'ouvre en mode plein écran |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Empêcher le chargement des extensions de navigateur |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactive la fonctionnalité de blocage des popups du navigateur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne pas réutiliser la fenêtre de navigateur existante, mais en créer une nouvelle à la place |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne un objet [System.Diagnostics.Process] du processus du navigateur |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Ne pas ouvrir le navigateur web, renvoyer simplement l'URL |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Après avoir ouvert le navigateur web, retournez l'URL |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échappe les caractères de contrôle lors de l'envoi de frappes au navigateur |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêche le retour du focus clavier à PowerShell après l'envoi de frappes |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilise Shift+Entrée au lieu d'Entrée normal pour les sauts de ligne lors de l'envoi de touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre l'envoi de différentes séquences de touches en millisecondes |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Ouvrez les fenêtres du navigateur côte à côte |

## Related Links

- [Open-IMDBQuery on GitHub](https://github.com/genXdev/genXdev)
