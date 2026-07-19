# Invoke-ImageEnhancement

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `enhanceimage

## Synopsis

> Améliore une image en l'agrandissant 4 fois tout en améliorant la qualité grâce à DeepStack.

## Description

Cette fonction améliore une image en l'agrandissant à 4 fois la largeur et la hauteur originales tout en augmentant simultanément la qualité de l'image. Elle utilise une API locale d'amélioration d'images DeepStack fonctionnant sur un port configurable et renvoie l'image améliorée sous forme de données base64 ou la sauvegarde dans un fichier. La fonction prend en charge l'accélération GPU et la gestion des conteneurs Docker.

## Syntax

```powershell
Invoke-ImageEnhancement -ImagePath <String> [[-OutputPath] <String>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le chemin local vers le fichier image à améliorer |
| `-OutputPath` | String | — | — | 1 | — | Chemin optionnel où l'image améliorée doit être enregistrée |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | Named | — | Nom personnalisé de l'image Docker à utiliser |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop pendant l'initialisation |

## Examples

### Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `                         -OutputPath "C:\Users\YourName\enhanced_photo.jpg" Enhances the image and saves it to the specified output path.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `
                        -OutputPath "C:\Users\YourName\enhanced_photo.jpg"
Enhances the image and saves it to the specified output path.
```

### enhanceimage "C:\photos\low_quality.jpg" Enhances the image and returns the base64 data and dimensions using alias.

```powershell
enhanceimage "C:\photos\low_quality.jpg"
Enhances the image and returns the base64 data and dimensions using alias.
```

### Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU Enhances the image using GPU acceleration for faster processing.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU
Enhances the image using GPU acceleration for faster processing.
```

## Related Links

- [Invoke-ImageEnhancement on GitHub](https://github.com/genXdev/genXdev)
