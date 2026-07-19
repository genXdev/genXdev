# Get-ImageDetectedObjects

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Détecte et classifie des objets dans une image téléchargée en utilisant DeepStack.

## Description

Cette fonction analyse un fichier image pour détecter et classer jusqu'à 80 types d'objets différents. Elle utilise une API locale de détection d'objets DeepStack fonctionnant sur un port configurable et renvoie les classifications d'objets avec leurs coordonnées de boîte englobante et leurs scores de confiance. La fonction prend en charge l'accélération GPU, les seuils de confiance personnalisés et la gestion des conteneurs Docker.

## Syntax

```powershell
Get-ImageDetectedObjects -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
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

### Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `                          -ConfidenceThreshold 0.5 `                          -ServicePort 5000

```powershell
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000
```

Détecte les objets dans l'image spécifiée avec des noms de paramètres complets.

### Get-ImageDetectedObjects "C:\photos\street.jpg"

```powershell
Get-ImageDetectedObjects "C:\photos\street.jpg"
```

Détecte les objets en utilisant un paramètre positionnel et des paramètres par défaut.

## Related Links

- [Get-ImageDetectedObjects on GitHub](https://github.com/genXdev/genXdev)
