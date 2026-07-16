# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)
