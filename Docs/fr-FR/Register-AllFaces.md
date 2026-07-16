# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Le répertoire contenant les images de visages organisées par dossier de personne. Si non spécifié, utilise le répertoire de visages configuré par défaut. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Nombre maximal de tentatives de nouvelle inscription pour les enregistrements ayant échoué |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | 7 | — | Nom personnalisé de l'image Docker à utiliser |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation de Docker Desktop (utilisé lorsqu'il est déjà appelé par une fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Force re-registration of all faces |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Renommer les fichiers image échoués qui n'ont pas pu être traités en raison de l'absence de visage trouvé |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop pendant l'initialisation |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Si spécifié, utilisez uniquement la session (ne persistez pas les modifications dans la base de données des préférences). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Si spécifié, effacez les préférences de session actuelles avant utilisation. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin vers la base de données de préférences à utiliser pour le chemin racine des visages connus. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Si spécifié, ignorer la logique de session lors de la récupération du chemin racine des visages connus. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
