# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Ajoute une nouvelle configuration de pair VPN WireGuard (client) au serveur.

## Description

Cette fonction ajoute un nouveau pair au serveur VPN WireGuard fonctionnant dans un conteneur Docker. Elle génère une nouvelle configuration client avec une adresse IP unique, crée les clés cryptographiques nécessaires et renvoie les détails de la configuration. La fonction peut éventuellement enregistrer la configuration dans un fichier ou générer un code QR pour une configuration facile sur appareil mobile. La fonction valide les noms des pairs, vérifie les doublons et gère diverses conditions d'erreur avec élégance.

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Un nom unique pour le pair |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | Les plages d'adresses IP qui seront routées via le VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | Serveurs DNS à utiliser pour ce pair |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Le chemin où le fichier de configuration du pair doit être enregistré |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | Le nom du volume Docker pour le stockage persistant |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | Le numéro de port pour le service WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Temps maximum en secondes à attendre pour la vérification de l'état du service |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Intervalle en secondes entre les tentatives de vérification de l'état de santé |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Nom personnalisé de l'image Docker à utiliser |
| `-PUID` | String | — | — | 10 | `'1000'` | ID utilisateur pour les autorisations dans le conteneur |
| `-PGID` | String | — | — | 11 | `'1000'` | ID de groupe pour les autorisations dans le conteneur |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Fuseau horaire à utiliser pour le conteneur |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Enregistrer la configuration du pair dans un fichier |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre WireGuard lors de l'initialisation du service |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprimer les bordures de fenêtre lors de l'initialisation du service |
| `-Width` | Int32 | — | — | Named | `-1` | Définir la largeur de la fenêtre lors de l'initialisation du service |
| `-Height` | Int32 | — | — | Named | `-1` | Définit la hauteur de la fenêtre lors de l'initialisation du service |
| `-Left` | Int32 | — | — | Named | — | Définit la position gauche de la fenêtre lors de l'initialisation du service |
| `-Right` | Int32 | — | — | Named | — | Définir la position correcte de la fenêtre lors de l'initialisation du service |
| `-Bottom` | Int32 | — | — | Named | — | Définir la position inférieure de la fenêtre lors de l'initialisation du service |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrer la fenêtre lors de l'initialisation du service |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Démarrer le service en mode plein écran |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus sur la fenêtre après avoir initialisé le service |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Afficher la fenêtre côte à côte lors de l'initialisation du service |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Concentrer la fenêtre après l'initialisation du service |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Placer la fenêtre au premier plan après initialisation du service |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Envoyer la touche Échap à la fenêtre après avoir initialisé le service |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier lors de l'envoi des touches après l'initialisation du service |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Maj+Entrée lors de l'envoi des touches après avoir initialisé le service |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai en millisecondes lors de l'envoi des touches après l'initialisation du service |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser la session uniquement pour le service WireGuard |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer la session lors de l'initialisation du service |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ignorer la session lors de l'initialisation du service |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Générer un code QR pour une configuration mobile facile |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisé lorsqu'elle est déjà appelée par une fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer la reconstruction du conteneur Docker et supprimer les données existantes |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Parameter Details

### `-PeerName <String>`

> Un nom unique pour le pair

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowedIPs <String>`

> Les plages d'adresses IP qui seront routées via le VPN

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'0.0.0.0/0, ::/0'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DNS <String>`

> Serveurs DNS à utiliser pour ce pair

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'1.1.1.1, 1.0.0.1'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> Le chemin où le fichier de configuration du pair doit être enregistré

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `"$env:USERPROFILE\WireGuardConfigs"` |
| **Accept pipeline input?** | False |
| **Aliases** | `outfile`, `OutputFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Le nom du conteneur Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Le nom du volume Docker pour le stockage persistant

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Le numéro de port pour le service WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Temps maximum en secondes à attendre pour la vérification de l'état du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Intervalle en secondes entre les tentatives de vérification de l'état de santé

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Nom personnalisé de l'image Docker à utiliser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> ID utilisateur pour les autorisations dans le conteneur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> ID de groupe pour les autorisations dans le conteneur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Fuseau horaire à utiliser pour le conteneur

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveConfig`

> Enregistrer la configuration du pair dans un fichier

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Afficher la fenêtre WireGuard lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Supprimer les bordures de fenêtre lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Définir la largeur de la fenêtre lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Définit la hauteur de la fenêtre lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Définit la position gauche de la fenêtre lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Définir la position correcte de la fenêtre lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Définir la position inférieure de la fenêtre lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Centrer la fenêtre lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Démarrer le service en mode plein écran

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Restaurer le focus sur la fenêtre après avoir initialisé le service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Afficher la fenêtre côte à côte lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Concentrer la fenêtre après l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Placer la fenêtre au premier plan après initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Envoyer la touche Échap à la fenêtre après avoir initialisé le service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Conserver le focus clavier lors de l'envoi des touches après l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Utilisez Maj+Entrée lors de l'envoi des touches après avoir initialisé le service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Délai en millisecondes lors de l'envoi des touches après l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Utiliser la session uniquement pour le service WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Effacer la session lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Ignorer la session lors de l'initialisation du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowQRCode`

> Générer un code QR pour une configuration mobile facile

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Ignorer l'initialisation Docker (utilisé lorsqu'elle est déjà appelée par une fonction parente)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Forcer la reconstruction du conteneur Docker et supprimer les données existantes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FREnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRReset-WireGuardConfiguration.md)
