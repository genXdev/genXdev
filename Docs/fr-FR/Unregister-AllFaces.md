# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Supprime tous les visages enregistrés du système de reconnaissance faciale DeepStack.

## Description

Cette fonction efface tous les visages enregistrés de la base de données de reconnaissance faciale DeepStack en supprimant tous les fichiers de visages du répertoire de stockage de données et en redémarrant le service pour recharger un registre de visages vide. Il s'agit d'une opération destructive qui ne peut pas être annulée et qui supprimera définitivement toutes les données de visages enregistrées.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Ignorer les invites de confirmation lors de la suppression de tous les visages enregistrés |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation de Docker Desktop (utilisé lorsqu'il est déjà appelé par une fonction parente) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | 5 | — | Nom personnalisé de l'image Docker à utiliser |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop pendant l'initialisation |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Supprime tous les visages enregistrés avec une invite de confirmation.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Supprime tous les visages enregistrés sans confirmation.

### unregall -Force

```powershell
unregall -Force
```

Utilise l'alias pour supprimer tous les visages sans confirmation.

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
