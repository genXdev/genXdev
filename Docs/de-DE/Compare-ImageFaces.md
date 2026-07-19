# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> Vergleicht Gesichter in zwei verschiedenen Bildern und gibt deren Ähnlichkeit mittels DeepStack zurück.

## Description

Diese Funktion vergleicht Gesichter zwischen zwei Bildern, um die Ähnlichkeit zu bestimmen. Sie verwendet eine lokale DeepStack-Gesichtserkennungs-API, die auf einem konfigurierbaren Port läuft, und gibt einen Ähnlichkeitswert zwischen 0,0 und 1,0 zurück. Dies wird typischerweise verwendet, um Ausweisdokumente mit Bildern einer Person abzugleichen oder zu überprüfen, ob zwei Fotos dieselbe Person zeigen.

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | Der lokale Pfad zur ersten zu vergleichenden Bilddatei |
| `-ImagePath2` | String | ✅ | — | 1 | — | Der lokale Pfad zur zweiten Bilddatei, die verglichen werden soll |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Der Port für den DeepStack-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 7 | — | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Nutzung der GPU-beschleunigten Version (erfordert NVIDIA-GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |

## Examples

### Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `                    -ImagePath2 "C:\Users\YourName\photo2.jpg"

```powershell
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"
```

Vergleicht Gesichter zwischen zwei Bildern mit Standardeinstellungen.

### comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

```powershell
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU
```

Vergleicht Gesichter mittels GPU-Beschleunigung zur Identitätsüberprüfung mit Alias- und Positionsparametern.

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)
