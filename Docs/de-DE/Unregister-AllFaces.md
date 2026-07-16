# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Bestätigungsaufforderungen beim Entfernen aller registrierten Gesichter umgehen |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop-Initialisierung überspringen (wird verwendet, wenn bereits durch übergeordnete Funktion aufgerufen) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Nutzung der GPU-beschleunigten Version (erfordert NVIDIA-GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Der Port für den DeepStack-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 5 | — | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
