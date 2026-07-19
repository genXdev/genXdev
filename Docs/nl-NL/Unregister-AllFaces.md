# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Verwijdert alle geregistreerde gezichten uit het DeepStack gezichtsherkenningssysteem.

## Description

Deze functie wist alle geregistreerde gezichten uit de DeepStack-gezichtsherkenningsdatabase door alle gezichtsbestanden uit de datastore-map te verwijderen en de service opnieuw te starten om een lege gezichtsregistratie te laden. Dit is een destructieve bewerking die niet ongedaan kan worden gemaakt en die permanent alle geregistreerde gezichtsgegevens verwijdert.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Bevestigingsprompts omzeilen bij het verwijderen van alle geregistreerde gezichten |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker Desktop-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 5 | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Verwijdert alle geregistreerde gezichten met bevestigingsprompt.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Verwijdert alle geregistreerde gezichten zonder bevestigingsvenster.

### unregall -Force

```powershell
unregall -Force
```

Gebruik alias om alle gezichten te verwijderen zonder bevestiging.

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
