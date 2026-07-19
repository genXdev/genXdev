# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Réinitialise la configuration du serveur VPN WireGuard, en supprimant tous les pairs.

## Description

Cette fonction réinitialise la configuration du serveur VPN WireGuard s'exécutant dans un conteneur Docker en supprimant tous les pairs et en générant une nouvelle configuration de serveur. Il s'agit d'une opération destructrice qui ne peut pas être annulée et qui supprimera définitivement toutes les configurations des pairs. La fonction arrête le service WireGuard, supprime tous les répertoires et fichiers de configuration des pairs, supprime les clés du serveur, redémarre le conteneur et vérifie qu'une nouvelle configuration est générée.

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Le numéro de port pour le service WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nom personnalisé de l'image Docker à utiliser |
| `-PUID` | String | — | — | 6 | `'1000'` | ID utilisateur pour les permissions dans le conteneur |
| `-PGID` | String | — | — | 7 | `'1000'` | ID de groupe pour les permissions dans le conteneur |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Fuseau horaire à utiliser pour le conteneur |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Réinitialisation forcée sans confirmation |

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

Réinitialise la configuration WireGuard avec les paramètres par défaut et demande confirmation avant de procéder.

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

Réinitialise la configuration WireGuard pour un nom de conteneur personnalisé sans invites de confirmation.

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
