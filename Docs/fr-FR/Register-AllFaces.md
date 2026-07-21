# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> Met à jour tous les profils de reconnaissance faciale à partir des fichiers image du répertoire faces.

## Description

Cette fonction met à jour la base de données de reconnaissance faciale avec toutes les images trouvées dans le répertoire spécifié. Le processus comprend :
1. Vérifier que le service de reconnaissance faciale est en cours d'exécution
2. Traiter toutes les images dans le dossier de chaque personne, en enregistrant tous les visages de cette personne avec un identifiant unique (le nom du dossier) dans une opération par lots
3. Prendre en charge une logique de nouvelle tentative pour les échecs d'enregistrement

Chaque dossier de personne peut contenir plusieurs images, et toutes les images seront enregistrées sous le même identifiant (nom de la personne) dans un seul appel API, éliminant ainsi le besoin de suffixes _1, _2, etc.

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Le répertoire contenant les images de visages organisées par dossiers de personnes. S'il n'est pas spécifié, utilise le répertoire de visages configuré par défaut. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Nombre maximum de tentatives de nouvelle inscription après un échec |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Le nom du volume Docker pour le stockage persistant |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Temps maximum en secondes à attendre pour la vérification de l'état du service |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervalle en secondes entre les tentatives de vérification de l'état de santé |
| `-ImageName` | String | — | — | 7 | — | Nom personnalisé de l'image Docker à utiliser |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Ignorer l'initialisation de Docker Desktop (utilisé lorsqu'elle est déjà appelée par une fonction parente) |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer la réenregistrement de tous les visages |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Renommer les fichiers image échoués qui n'ont pas pu être traités car aucun visage n'a été trouvé |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Forcer la reconstruction du conteneur Docker et supprimer les données existantes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Utiliser la version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop lors de l'initialisation |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Si spécifié, utilisez uniquement la session (ne persistez pas les modifications dans la base de données des préférences). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Si spécifié, efface les préférences de la session actuelle avant utilisation. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données de préférences à utiliser pour le chemin racine des visages connus. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Si spécifié, ignore la logique de session lors de la récupération du chemin racine des visages connus. |

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Parameter Details

### `-FacesDirectory <String>`

> Le répertoire contenant les images de visages organisées par dossiers de personnes. S'il n'est pas spécifié, utilise le répertoire de visages configuré par défaut.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Nombre maximum de tentatives de nouvelle inscription après un échec

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Le nom du conteneur Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Le nom du volume Docker pour le stockage persistant

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Le numéro de port pour le service DeepStack

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Temps maximum en secondes à attendre pour la vérification de l'état du service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Intervalle en secondes entre les tentatives de vérification de l'état de santé

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Nom personnalisé de l'image Docker à utiliser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Ignorer l'initialisation de Docker Desktop (utilisé lorsqu'elle est déjà appelée par une fonction parente)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Forcer la réenregistrement de tous les visages

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RenameFailed`

> Renommer les fichiers image échoués qui n'ont pas pu être traités car aucun visage n'a été trouvé

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> Forcer la reconstruction du conteneur Docker et supprimer les données existantes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> Utiliser la version accélérée par GPU (nécessite un GPU NVIDIA)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Afficher la fenêtre de Docker Desktop lors de l'initialisation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Si spécifié, utilisez uniquement la session (ne persistez pas les modifications dans la base de données des préférences).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Si spécifié, efface les préférences de la session actuelle avant utilisation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Chemin de la base de données de préférences à utiliser pour le chemin racine des visages connus.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Si spécifié, ignore la logique de session lors de la récupération du chemin racine des visages connus.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCompare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRegister-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUnregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUnregister-Face.md)
