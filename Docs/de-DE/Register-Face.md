# Register-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-Face -Identifier <String> -ImagePath <String[]> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | — | 0 | — | Die eindeutige Kennung für das Gesicht (z. B. der Name der Person) |
| `-ImagePath` | String[] | ✅ | — | 1 | — | Array of local paths to image files (png, jpg, jpeg, or gif) |
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

- [Register-Face on GitHub](https://github.com/genXdev/genXdev)
