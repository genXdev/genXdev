# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère une liste de tous les identifiants de visages enregistrés depuis DeepStack.

## Description

Cette fonction se connecte à une API locale de reconnaissance faciale DeepStack et récupère tous les identifiants de visage enregistrés. Elle utilise le point d'accès /v1/vision/face/list pour interroger le service DeepStack et renvoie un tableau de chaînes d'identifiants de visage. La fonction gère l'initialisation du conteneur Docker, la communication avec l'API et la gestion des erreurs pour divers scénarios d'échec.

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | 5 | — | Nom personnalisé de l'image Docker à utiliser |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop pendant l'initialisation |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

Cet exemple récupère tous les visages enregistrés en utilisant les paramètres par défaut.

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

Cet exemple force une reconstruction du conteneur et utilise l'accélération GPU.

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

Cet exemple utilise un nom de conteneur et un numéro de port personnalisés.

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

Cet exemple récupère tous les visages et filtre ceux qui commencent par « John ».

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)
