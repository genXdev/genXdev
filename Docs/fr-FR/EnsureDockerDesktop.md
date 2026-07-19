# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Garantit que Docker Desktop est installé et disponible pour les opérations de conteneurisation.

## Description

Vérifie si Docker Desktop est installé et correctement configuré sur le système.
Si ce n'est pas le cas, installe Docker Desktop à l'aide de WinGet et gère l'ensemble du processus d'installation automatiquement. Cette fonction gère également le démarrage du service Docker Desktop, la vérification de l'état de préparation du démon et la gestion des exigences d'authentification si nécessaire. La fonction inclut une gestion complète des chemins pour les installations Docker au niveau système et utilisateur.

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop pendant l'initialisation |
| `-Monitor` | Int32 | — | — | 0 | `-1` | L'écran à utiliser, 0 = par défaut, -1 signifie ignorer |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-Force` | SwitchParameter | — | — | Named | — | Force un redémarrage de Docker Desktop |
| `-Width` | Int32 | — | — | 1 | — | La largeur initiale de la fenêtre |
| `-Height` | Int32 | — | — | 2 | — | La hauteur initiale de la fenêtre |
| `-X` | Int32 | — | — | 3 | — | La position X initiale de la fenêtre |
| `-Y` | Int32 | — | — | 4 | — | La position Y initiale de la fenêtre |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placer la fenêtre sur le côté droit de l'écran |
| `-Top` | SwitchParameter | — | — | Named | — | Placer la fenêtre en haut de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre au centre de l'écran |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximisez la fenêtre |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Soit mettre la fenêtre en plein écran sur un moniteur différent de Powershell, soit l'afficher côte à côte avec Powershell sur le même moniteur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Définir la fenêtre au premier plan après l'ouverture |
| `-KeysToSend` | String[] | — | — | 5 | — | Frappes à envoyer à la fenêtre, voir la documentation de l'applet de commande GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier sur la fenêtre cible lors de l'envoi des touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée lors de l'envoi des touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | Délai entre les différentes chaînes d'entrée en millisecondes lors de l'envoi des touches |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Skip Docker initialization and return immediately |

## Examples

### EnsureDockerDesktop

```powershell
EnsureDockerDesktop
```

### EnsureDockerDesktop -ShowWindow -Centered -NoBorders

```powershell
EnsureDockerDesktop -ShowWindow -Centered -NoBorders
```

### EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600

```powershell
EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600
```

## Related Links

- [EnsureDockerDesktop on GitHub](https://github.com/genXdev/genXdev)
