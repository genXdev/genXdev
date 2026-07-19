# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages

## Synopsis

> Batch-Updates von Bild-Keywords, Gesichtern, Objekten und Szenen über mehrere Systemverzeichnisse hinweg.

## Description

Diese Funktion verarbeitet systematisch Bilder in verschiedenen Systemverzeichnissen, um deren Schlüsselwörter, Gesichtserkennungsdaten, Objekterkennungsdaten und Szenenklassifikationsdaten mithilfe von KI-Diensten zu aktualisieren. Sie umfasst Medienverzeichnisse, Systemdateien, Downloads, OneDrive und persönliche Bilderordner.

Die Funktion verarbeitet Bilder, indem sie jedes Verzeichnis durchläuft und die Dateien einzeln bearbeitet. DeepStack-Funktionen (Gesichter, Objekte, Szenen) werden zuerst ausgeführt, gefolgt von der Generierung von Schlüsselwörtern und Beschreibungen.

Dies ermöglicht eine strukturierte Datenausgabe für Pipeline-Operationen wie:
Update-AllImageMetaData | Export-ImageIndex

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | Array von Verzeichnispfaden zur Verarbeitung von Bildaktualisierungen |
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
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Timeout in Sekunden für die Anfrage, standardmäßig 24 Stunden |
| `-FacesDirectory` | String | — | — | Named | — | Das Verzeichnis, das Gesichtsbilder enthält, organisiert nach Personenordnern. Falls nicht angegeben, wird das konfigurierte Standardverzeichnis für Gesichter verwendet. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Werde zuvor fehlgeschlagene Aktualisierungen von Bild-Keywords erneut versuchen |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Bei der Verarbeitung von Bildern nicht in Unterverzeichnisse rekursieren. |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Redo all images regardless of previous processing |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Nutzung der GPU-beschleunigten Version (erfordert NVIDIA-GPU) |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru, um strukturierte Objekte zurückzugeben, anstatt sie in der Konsole auszugeben |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Erkennt Änderungen im Verzeichnis 'faces' und registriert Gesichter bei Bedarf neu |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `     -ServicePort 5000

```powershell
Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `
    -ServicePort 5000
```

### Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"

```powershell
Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"
```

### updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition" ##############################################################################

```powershell
updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition"
##############################################################################
```

## Related Links

- [Update-AllImageMetaData on GitHub](https://github.com/genXdev/genXdev)
