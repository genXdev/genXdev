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
| `-FacesDirectory` | String | — | — | 0 | — | De map met gezichtsafbeeldingen, geordend per persoonsmap. Indien niet gespecificeerd, wordt de geconfigureerde voorkeursmap voor gezichten gebruikt. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Maximum aantal pogingen voor mislukte registraties |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 7 | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer herregistratie van alle gezichten |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Hernoemen van mislukte afbeeldingsbestanden die niet konden worden verwerkt omdat er geen gezicht is gevonden |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Indien opgegeven, gebruik alleen de sessie (wijzigingen niet in de voorkeurendatabase opslaan). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, wis de huidige sessievoorkeuren voor gebruik. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Pad naar de voorkeuren database die gebruikt moet worden voor het root pad van bekende gezichten. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Indien opgegeven, sla sessielogica over bij het ophalen van het rootpad van bekende gezichten. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
