# Set-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wp

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Set-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Set-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]

Set-WindowPosition [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Fullscreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom du processus de la fenêtre à positionner *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | Le processus de positionnement de la fenêtre *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Objet d'aide Get-Window pour la manipulation directe des fenêtres *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Sélection du moniteur : 0=principal, 1+=moniteur spécifique, -1=actuel, -2=secondaire |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-Width` | Int32 | — | — | Named | `-1` | Largeur de la fenêtre en pixels |
| `-Height` | Int32 | — | — | Named | `-999999` | Hauteur de la fenêtre en pixels |
| `-X` | Int32 | — | — | Named | `-999999` | Position horizontale de la fenêtre en pixels |
| `-Y` | Int32 | — | — | Named | `-999999` | Position verticale de la fenêtre en pixels |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placer la fenêtre sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre en haut de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre au centre de l'écran |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximisez la fenêtre |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-PassThru` | SwitchParameter | — | — | Named | — | Renvoie l'assistant fenêtre pour chaque processus |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Soit mettre la fenêtre en plein écran sur un moniteur différent de Powershell, soit l'afficher côte à côte avec Powershell sur le même moniteur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Définir la fenêtre au premier plan après l'ouverture |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimise la fenêtre après le positionnement |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximiser la fenêtre après le positionnement |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurer la fenêtre à son état normal après le positionnement |
| `-KeysToSend` | String[] | — | — | Named | — | Frappes à envoyer à la fenêtre, voir la documentation de l'applet de commande GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier sur la fenêtre cible lors de l'envoi des touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée lors de l'envoi des touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre les différentes chaînes d'entrée en millisecondes lors de l'envoi des touches |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Related Links

- [Set-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
