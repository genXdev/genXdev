# Get-ImageDetectedFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Erkennt Gesichter in einem hochgeladenen Bild durch Vergleich mit bekannten Gesichtern mithilfe von DeepStack.

## Description

Diese Funktion analysiert eine Bilddatei, um Gesichter zu identifizieren, indem sie sie mit bekannten Gesichtern in der Datenbank vergleicht. Sie verwendet eine lokale DeepStack-Gesichtserkennungs-API, die auf einem konfigurierbaren Port läuft, und gibt Gesichtstreffer mit ihren Konfidenzwerten zurück. Die Funktion unterstützt GPU-Beschleunigung, benutzerdefinierte Konfidenzschwellenwerte und Docker-Container-Verwaltung.

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
