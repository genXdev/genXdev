# Invoke-ImageFacesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepeopledetection

## Synopsis

> Met à jour les métadonnées de reconnaissance faciale pour les fichiers image dans un répertoire spécifié.

## Description

Cette fonction traite les images dans un répertoire spécifié pour identifier et analyser les visages à l'aide de la technologie de reconnaissance IA. Elle crée ou met à jour des fichiers de métadonnées contenant des informations sur les visages pour chaque image. Les métadonnées sont stockées dans un fichier séparé avec

## Syntax

```powershell
Invoke-ImageFacesUpdate [[-ImageDirectories] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Les chemins de répertoire contenant les images à traiter |
| `-Recurse` | SwitchParameter | — | — | Named | — | Traiter les images dans le répertoire spécifié et tous les sous-répertoires |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Traiter uniquement les images qui n'ont pas encore de fichiers de métadonnées de visage |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Réessaier les mises à jour de mots-clés d'images qui ont échoué précédemment |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | Named | — | Nom personnalisé de l'image Docker à utiliser |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Seuil de confiance minimal (0,0-1,0) pour la détection d'objets |
| `-Language` | String | — | — | Named | — | La langue pour les descriptions et mots-clés générés |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Nom ou chemin partiel du modèle à initialiser 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | URL du point de terminaison de l'API, valeur par défaut : http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | La clé API à utiliser pour la requête |
| `-TimeoutSecond` | Int32 | — | — | Named | — | Délai d'expiration en secondes pour la requête, par défaut 24 heures |
| `-FacesDirectory` | String | — | — | Named | — | Le répertoire contenant les images de visages organisées par dossier de personne. Si non spécifié, utilise le répertoire de visages configuré par défaut. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation Docker (utilisée lorsqu'elle est déjà appelée par la fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre Docker pendant l'initialisation |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru pour retourner des objets structurés au lieu d'afficher dans la console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Détecte les changements dans le répertoire des visages et réenregistre les visages si nécessaire |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |

## Examples

### Invoke-ImageFacesUpdate -Name @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageFacesUpdate -Name @("C:\Photos", "D:\Pictures") -Recurse
```

### facerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew ##############################################################################

```powershell
facerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
##############################################################################
```

## Related Links

- [Invoke-ImageFacesUpdate on GitHub](https://github.com/genXdev/genXdev)
