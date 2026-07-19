# Get-ImageDetectedFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Reconnaît les visages dans une image téléchargée en les comparant à des visages connus via DeepStack.

## Description

Cette fonction analyse un fichier image pour identifier des visages en les comparant aux visages connus dans la base de données. Elle utilise une API locale de reconnaissance faciale DeepStack fonctionnant sur un port configurable et renvoie les correspondances de visages avec leurs scores de confiance. La fonction prend en charge l'accélération GPU, les seuils de confiance personnalisés et la gestion des conteneurs Docker.

## Syntax

```powershell
Get-ImageDetectedFaces -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le chemin local vers le fichier image à analyser |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | Seuil de confiance minimum (0.0-1.0). Par défaut 0.5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | Named | — | Nom personnalisé de l'image Docker à utiliser |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop pendant l'initialisation |

## Examples

### Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `                        -ConfidenceThreshold 0.5 `                        -ContainerName "deepstack_face_recognition" `                        -VolumeName "deepstack_face_data" `                        -ServicePort 5000 `                        -HealthCheckTimeout 60 `                        -HealthCheckInterval 3 Recognizes faces in the specified image using full parameter names.

```powershell
Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `
                       -ConfidenceThreshold 0.5 `
                       -ContainerName "deepstack_face_recognition" `
                       -VolumeName "deepstack_face_data" `
                       -ServicePort 5000 `
                       -HealthCheckTimeout 60 `
                       -HealthCheckInterval 3
Recognizes faces in the specified image using full parameter names.
```

### Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU Recognizes faces using positional parameter and aliases.

```powershell
Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU
Recognizes faces using positional parameter and aliases.
```

### "C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces Recognizes faces using pipeline input.

```powershell
"C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces
Recognizes faces using pipeline input.
```

## Related Links

- [Get-ImageDetectedFaces on GitHub](https://github.com/genXdev/genXdev)
