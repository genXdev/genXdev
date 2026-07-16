# Get-ImageDetectedFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ImageDetectedFaces -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der lokale Pfad zur Bilddatei, die analysiert werden soll |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | Mindestkonfidenzschwelle (0,0-1,0). Standardwert ist 0,5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Der Port für den DeepStack-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | Named | — | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Nutzung der GPU-beschleunigten Version (erfordert NVIDIA-GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |

## Related Links

- [Get-ImageDetectedFaces on GitHub](https://github.com/genXdev/genXdev)
