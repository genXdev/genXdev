# EnsureDeepStack

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Garantit que le service de reconnaissance faciale DeepStack est installé et en cours d'exécution.

## Description

Cette fonction configure et gère le service de reconnaissance faciale DeepStack en utilisant Docker. Elle vérifie que Docker Desktop est installé, télécharge l'image Docker DeepStack et exécute le service dans un conteneur avec un stockage persistant pour les visages enregistrés.

DeepStack fournit une API REST simple pour la détection, l'enregistrement et la reconnaissance des visages, bien documentée et activement maintenue.

## Syntax

```powershell
EnsureDeepStack [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-Monitor <Int32>] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-UseGPU] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Le nom du conteneur Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Le numéro de port pour le service DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Temps maximum en secondes pour attendre le contrôle de santé du service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalle en secondes entre les tentatives de vérification d'état |
| `-ImageName` | String | — | — | 5 | — | Nom personnalisé de l'image Docker à utiliser |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Version accélérée par GPU (nécessite un GPU NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Afficher la fenêtre de Docker Desktop pendant l'initialisation |
| `-Monitor` | Int32 | — | — | Named | `-2` | L'écran à utiliser, 0 = par défaut, -1 signifie ignorer |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Supprime les bordures de la fenêtre |
| `-Width` | Int32 | — | — | Named | — | La largeur initiale de la fenêtre |
| `-Height` | Int32 | — | — | Named | — | La hauteur initiale de la fenêtre |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Placer la fenêtre sur le côté droit de l'écran |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Placer la fenêtre au centre de l'écran |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximisez la fenêtre |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurer le focus de la fenêtre PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Soit mettre la fenêtre en plein écran sur un moniteur différent de Powershell, soit l'afficher côte à côte avec Powershell sur le même moniteur |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Définir la fenêtre au premier plan après l'ouverture |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs lors de l'envoi des touches |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Conserver le focus clavier sur la fenêtre cible lors de l'envoi des touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilisez Shift+Entrée au lieu d'Entrée lors de l'envoi des touches |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre les différentes chaînes d'entrée en millisecondes lors de l'envoi des touches |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### EnsureDeepStack -ContainerName "deepstack_face_recognition" `                 -VolumeName "deepstack_face_data" `                 -ServicePort 5000 `                 -HealthCheckTimeout 60 `                 -HealthCheckInterval 3

```powershell
EnsureDeepStack -ContainerName "deepstack_face_recognition" `
                -VolumeName "deepstack_face_data" `
                -ServicePort 5000 `
                -HealthCheckTimeout 60 `
                -HealthCheckInterval 3
```

### EnsureDeepStack -Force -UseGPU

```powershell
EnsureDeepStack -Force -UseGPU
```

## Outputs

- `Boolean`

## Related Links

- [EnsureDeepStack on GitHub](https://github.com/genXdev/genXdev)
