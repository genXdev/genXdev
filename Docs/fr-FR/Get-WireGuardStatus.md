# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre lors de l'exécution du conteneur (transparent) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimer les bordures de fenêtre (mode transparent) |
| `-Width` | Int32 | — | — | 9 | `-1` | Largeur de la fenêtre en caractères ou en pixels (pass-through) |
| `-Height` | Int32 | — | — | 10 | `-1` | Hauteur de la fenêtre en caractères ou en pixels (pass-through) |
| `-Left` | Int32 | — | — | 11 | — | Position de la fenêtre gauche (transparent) |
| `-Right` | Int32 | — | — | 12 | — | Position droite de la fenêtre (pass-through) |
| `-Bottom` | Int32 | — | — | 13 | — | Position inférieure de la fenêtre (transparente) |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrer la fenêtre (transparent) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Ouvrir la fenêtre en mode plein écran (transparent) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus sur la fenêtre après l'opération (transparent) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Afficher la fenêtre côte à côte (pass-through) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focaliser la fenêtre après l'ouverture (transparent) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre au premier plan (transparent) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Envoyer la touche Échap à la fenêtre (pass-through) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver la focalisation du clavier lors de l'envoi de touches (transmission) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Maj+Entrée lors de l'envoi des clés (transmission directe) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Délai en millisecondes entre l'envoi des touches (passage) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Session only mode (pass-through) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer les données de session (transparent) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation de la session (pass-through) |

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)
