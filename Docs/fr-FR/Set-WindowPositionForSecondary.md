# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Le processus de positionnement de la fenêtre |
| `-Monitor` | Int32 | — | — | Named | `-2` | Le moniteur à utiliser, 0=défaut, -1=ignorer, -2=configuré |
| `-Width` | Int32 | — | — | Named | `-1` | La largeur initiale de la fenêtre |
| `-Height` | Int32 | — | — | Named | `-1` | La hauteur initiale de la fenêtre |
| `-X` | Int32 | — | — | Named | `-999999` | La position X initiale de la fenêtre |
| `-Y` | Int32 | — | — | Named | `-999999` | La position Y initiale de la fenêtre |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placer la fenêtre sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre en haut de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre au centre de l'écran |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Envoie F11 à la fenêtre |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after positioning |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre au premier plan après le positionnement |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-KeysToSend` | String[] | — | — | Named | — | Frappes à envoyer à la fenêtre après le positionnement |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier sur la fenêtre cible lors de l'envoi des touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée lors de l'envoi des touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre les différentes chaînes d'entrée en millisecondes lors de l'envoi des touches |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourne l'objet processus après le positionnement |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Placez la fenêtre côte à côte avec PowerShell sur le même moniteur |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)
