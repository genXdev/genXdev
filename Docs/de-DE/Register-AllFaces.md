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
| `-FacesDirectory` | String | — | — | 0 | — | Das Verzeichnis, das Gesichtsbilder enthält, organisiert nach Personenordnern. Falls nicht angegeben, wird das konfigurierte Standardverzeichnis für Gesichter verwendet. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Maximale Anzahl von Wiederholungsversuchen für fehlgeschlagene Registrierungen |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Der Port für den DeepStack-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 7 | — | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop-Initialisierung überspringen (wird verwendet, wenn bereits durch übergeordnete Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erneute Registrierung aller Gesichter erzwingen |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Fehlgeschlagene Bilddateien umbenennen, die aufgrund fehlender Gesichter nicht verarbeitet werden konnten |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Nutzung der GPU-beschleunigten Version (erfordert NVIDIA-GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Falls angegeben, nur die Sitzung verwenden (Änderungen nicht in der Datenbank für Einstellungen speichern). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Falls angegeben, löschen Sie die aktuellen Sitzungseinstellungen vor der Verwendung. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Pfad zur Präferenzdatenbank, die für den Stammpfad bekannter Gesichter verwendet werden soll. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Wenn angegeben, wird die Sitzungslogik beim Abrufen des Stammpfads bekannter Gesichter übersprungen. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
