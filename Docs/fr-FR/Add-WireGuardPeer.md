# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Un nom unique pour le pair |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | Les plages IP qui seront routées via le VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | Serveurs DNS à utiliser pour ce pair |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Le chemin où le fichier de configuration du pair doit être enregistré |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | Le numéro de port pour le service WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Nom personnalisé de l'image Docker à utiliser |
| `-PUID` | String | — | — | 10 | `'1000'` | ID utilisateur pour les permissions dans le conteneur |
| `-PGID` | String | — | — | 11 | `'1000'` | ID de groupe pour les permissions dans le conteneur |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Fuseau horaire à utiliser pour le conteneur |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Save the peer configuration to a file |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre WireGuard lors de l'initialisation du service |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimer les bordures de fenêtre lors de l'initialisation du service |
| `-Width` | Int32 | — | — | Named | `-1` | Définir la largeur de la fenêtre lors de l'initialisation du service |
| `-Height` | Int32 | — | — | Named | `-1` | Définir la hauteur de la fenêtre lors de l'initialisation du service |
| `-Left` | Int32 | — | — | Named | — | Set the window left position when initializing the service |
| `-Right` | Int32 | — | — | Named | — | Définir la position correcte de la fenêtre lors de l'initialisation du service |
| `-Bottom` | Int32 | — | — | Named | — | Définir la position inférieure de la fenêtre lors de l'initialisation du service |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrer la fenêtre lors de l'initialisation du service |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Lancer le service en mode plein écran |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus sur la fenêtre après avoir initialisé le service |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Afficher la fenêtre côte à côte lors de l'initialisation du service |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Centrer la fenêtre après avoir initialisé le service |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Mettre la fenêtre au premier plan après l'initialisation du service |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Envoyer la touche Échap à la fenêtre après l'initialisation du service |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier lors de l'envoi des touches après l'initialisation du service |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée lors de l'envoi des touches après avoir initialisé le service |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai en millisecondes lors de l'envoi des touches après l'initialisation du service |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser la session uniquement pour le service WireGuard |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer la session lors de l'initialisation du service |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ignorer la session lors de l'initialisation du service |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Générer un code QR pour une configuration mobile facile |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
