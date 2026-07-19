# Invoke-ImageFacesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepeopledetection

## Synopsis

> Updates face recognition metadata for image files in a specified directory.

## Description

Diese Funktion verarbeitet Bilder in einem angegebenen Verzeichnis, um Gesichter mithilfe von KI-Erkennungstechnologie zu identifizieren und zu analysieren. Sie erstellt oder aktualisiert Metadatendateien mit Gesichtsinformationen für jedes Bild. Die Metadaten werden in einer separaten Datei gespeichert.

## Syntax

```powershell
Invoke-ImageFacesUpdate [[-ImageDirectories] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Die Verzeichnispfade, die Bilder zur Verarbeitung enthalten |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verarbeite Bilder im angegebenen Verzeichnis und allen Unterverzeichnissen |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Werde zuvor fehlgeschlagene Aktualisierungen von Bild-Keywords erneut versuchen |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Der Port für den DeepStack-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | Named | — | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Mindest-Konfidenzschwelle (0,0-1,0) für die Objekterkennung |
| `-Language` | String | — | — | Named | — | Die Sprache für generierte Beschreibungen und Schlüsselwörter |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Name oder Teilpfad des zu initialisierenden Modells 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | API-Endpunkt-URL, standardmäßig http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | Der zu verwendende API-Schlüssel für die Anfrage |
| `-TimeoutSecond` | Int32 | — | — | Named | — | Timeout in Sekunden für die Anfrage, standardmäßig 24 Stunden |
| `-FacesDirectory` | String | — | — | Named | — | Das Verzeichnis, das Gesichtsbilder enthält, organisiert nach Personenordnern. Falls nicht angegeben, wird das konfigurierte Standardverzeichnis für Gesichter verwendet. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Nutzung der GPU-beschleunigten Version (erfordert NVIDIA-GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker-Fenster während der Initialisierung anzeigen |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru, um strukturierte Objekte zurückzugeben, anstatt sie in der Konsole auszugeben |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Erkennt Änderungen im Verzeichnis 'faces' und registriert Gesichter bei Bedarf neu |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

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
