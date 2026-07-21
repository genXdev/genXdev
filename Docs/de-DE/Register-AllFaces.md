# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> Aktualisiert alle Gesichtserkennungsprofile aus den Bilddateien im Gesichter-Verzeichnis.

## Description

Diese Funktion aktualisiert die Gesichtserkennungsdatenbank mit allen Bildern, die im angegebenen Gesichterverzeichnis gefunden werden. Der Prozess umfasst:
1. Sicherstellen, dass der Gesichtserkennungsdienst ausgeführt wird
2. Verarbeiten aller Bilder in jedem Personenordner, Registrieren aller Gesichter dieser Person mit einer einzigen Kennung (dem Ordnernamen) in einem Batch-Vorgang
3. Unterstützen einer Wiederholungslogik für fehlgeschlagene Registrierungen

Jeder Personenordner kann mehrere Bilder enthalten, und alle Bilder werden unter derselben Kennung (Personenname) in einem einzigen API-Aufruf registriert, wodurch die Notwendigkeit von _1, _2 usw. Suffixen entfällt.

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Das Verzeichnis, das nach Personenordnern organisierte Gesichtsbilder enthält. Wenn nicht angegeben, wird das konfigurierte Gesichterverzeichnis verwendet. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Maximale Anzahl der Wiederholungsversuche für fehlgeschlagene Registrierungen |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Der Name für das Docker-Volume für dauerhaften Speicher |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Die Portnummer für den DeepStack-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximale Zeit in Sekunden, die auf die Dienststatusüberprüfung gewartet wird |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervall in Sekunden zwischen den Integritätsprüfungen |
| `-ImageName` | String | — | — | 7 | — | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop-Initialisierung überspringen (wird verwendet, wenn bereits von einer übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingen Sie die erneute Registrierung aller Gesichter |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Fehlgeschlagene Bilddateien umbenennen, die aufgrund fehlender Gesichtserkennung nicht verarbeitet werden konnten |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Erzwingen Sie den Neubau des Docker-Containers und entfernen Sie vorhandene Daten |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU-beschleunigte Version verwenden (erfordert NVIDIA-GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Docker Desktop-Fenster während der Initialisierung anzeigen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Falls angegeben, nur die Sitzung verwenden (Änderungen nicht in der Präferenzdatenbank speichern). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Falls angegeben, löschen Sie die aktuellen Sitzungseinstellungen vor der Verwendung. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Pfad zur Präferenzdatenbank, die für den Stammpfad bekannter Gesichter verwendet werden soll. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Falls angegeben, wird die Sitzungslogik beim Abrufen des Stammpfads bekannter Gesichter übersprungen. |

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

> Das Verzeichnis, das nach Personenordnern organisierte Gesichtsbilder enthält. Wenn nicht angegeben, wird das konfigurierte Gesichterverzeichnis verwendet.

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

> Maximale Anzahl der Wiederholungsversuche für fehlgeschlagene Registrierungen

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

> Der Name für den Docker-Container

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

> Der Name für das Docker-Volume für dauerhaften Speicher

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

> Die Portnummer für den DeepStack-Dienst

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

> Maximale Zeit in Sekunden, die auf die Dienststatusüberprüfung gewartet wird

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

> Intervall in Sekunden zwischen den Integritätsprüfungen

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

> Benutzerdefinierter Docker-Image-Name zur Verwendung

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

> Docker Desktop-Initialisierung überspringen (wird verwendet, wenn bereits von einer übergeordneten Funktion aufgerufen)

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

> Erzwingen Sie die erneute Registrierung aller Gesichter

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

> Fehlgeschlagene Bilddateien umbenennen, die aufgrund fehlender Gesichtserkennung nicht verarbeitet werden konnten

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

> Erzwingen Sie den Neubau des Docker-Containers und entfernen Sie vorhandene Daten

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

> GPU-beschleunigte Version verwenden (erfordert NVIDIA-GPU)

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

> Docker Desktop-Fenster während der Initialisierung anzeigen

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

> Falls angegeben, nur die Sitzung verwenden (Änderungen nicht in der Präferenzdatenbank speichern).

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

> Falls angegeben, löschen Sie die aktuellen Sitzungseinstellungen vor der Verwendung.

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

> Pfad zur Präferenzdatenbank, die für den Stammpfad bekannter Gesichter verwendet werden soll.

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

> Falls angegeben, wird die Sitzungslogik beim Abrufen des Stammpfads bekannter Gesichter übersprungen.

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/de-DE/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/de-DE/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/de-DE/Unregister-Face.md)
