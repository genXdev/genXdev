# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 5 | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)
