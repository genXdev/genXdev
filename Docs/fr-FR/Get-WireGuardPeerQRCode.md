# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Le nom du pair pour lequel générer un code QR |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Le numéro de port pour le service WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Nom personnalisé de l'image Docker à utiliser |
| `-PUID` | String | — | — | Named | `'1000'` | ID utilisateur pour les permissions dans le conteneur |
| `-PGID` | String | — | — | Named | `'1000'` | ID de groupe pour les permissions dans le conteneur |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Fuseau horaire à utiliser pour le conteneur |

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
