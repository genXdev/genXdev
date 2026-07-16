# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Le numéro de port pour le service WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nom personnalisé de l'image Docker à utiliser |
| `-PUID` | String | — | — | 6 | `'1000'` | ID utilisateur pour les permissions dans le conteneur |
| `-PGID` | String | — | — | 7 | `'1000'` | ID de groupe pour les permissions dans le conteneur |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Fuseau horaire à utiliser pour le conteneur |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show the Docker window when running WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimer les bordures de fenêtre pour la fenêtre Docker |
| `-Width` | Int32 | — | — | 9 | `-1` | Définir la largeur de la fenêtre Docker |
| `-Height` | Int32 | — | — | 10 | `-1` | Définir la hauteur de la fenêtre Docker |
| `-Left` | Int32 | — | — | 11 | — | Définir la position gauche de la fenêtre Docker |
| `-Right` | Int32 | — | — | 12 | — | Définir la position de la fenêtre Docker sur la droite |
| `-Bottom` | Int32 | — | — | 13 | — | Définir la position inférieure de la fenêtre Docker |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrer la fenêtre Docker sur l'écran |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Lancer la fenêtre Docker en mode plein écran |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus sur la fenêtre précédente après avoir exécuté Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Afficher la fenêtre Docker côte à côte avec d'autres fenêtres |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Mettre la fenêtre Docker au premier plan après le lancement |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the Docker window as foreground window |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Envoyer la touche Échap à la fenêtre Docker après le lancement |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Garder le focus clavier dans la fenêtre Docker après le lancement |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Maj+Entrée pour envoyer les touches dans la fenêtre Docker |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Délai en millisecondes entre l'envoi des touches à la fenêtre Docker |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Ne pas utiliser Docker en mode session |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer la session pour la fenêtre Docker avant d'exécuter |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ignorer la session pour la fenêtre Docker |

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
