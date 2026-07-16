# Show-WebsiteInAllBrowsers

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-WebsiteInAllBrowsers -Url <String> [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Les URL à ouvrir simultanément dans tous les navigateurs |
| `-Monitor` | Int32 | — | — | Named | `-1` | Le moniteur à utiliser, 0 = défaut, -1 = ignorer, -2 = moniteur secondaire configuré, par défaut $Global:DefaultSecondaryMonitor ou 2 si non trouvé |
| `-Width` | Int32 | — | — | Named | `-1` | La largeur initiale de la fenêtre du navigateur Web |
| `-Height` | Int32 | — | — | Named | `-1` | Hauteur initiale de la fenêtre du navigateur web |
| `-X` | Int32 | — | — | Named | `-999999` | La position initiale X de la fenêtre du navigateur web |
| `-Y` | Int32 | — | — | Named | `-999999` | Position Y initiale de la fenêtre du navigateur Web |
| `-AcceptLang` | String | — | — | Named | — | Set browser accept-language HTTP header |
| `-FullScreen` | SwitchParameter | — | — | Named | — | S'ouvre en mode plein écran |
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
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Masquer les contrôles du navigateur |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Empêcher le chargement des extensions de navigateur |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Désactiver le bloqueur de pop-ups |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Ne pas réutiliser la fenêtre de navigateur existante, mais en créer une nouvelle à la place |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre du navigateur au premier plan après l'ouverture |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle lors de l'envoi de touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Empêcher le retour du focus clavier à PowerShell après l'envoi de touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Envoyer Maj+Entrée au lieu d'Entrée normal pour les sauts de ligne |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre l'envoi de différentes séquences de touches en millisecondes |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre du navigateur. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionner la fenêtre du navigateur soit en plein écran sur un moniteur différent de PowerShell, soit côte à côte avec PowerShell sur le même moniteur. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Enregistrer uniquement les paramètres dans les préférences persistantes sans affecter la session. |

## Related Links

- [Show-WebsiteInAllBrowsers on GitHub](https://github.com/genXdev/genXdev)
