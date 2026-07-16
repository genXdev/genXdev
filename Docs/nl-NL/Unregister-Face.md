# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De unieke identificatie van het gezicht dat moet worden verwijderd uit het DeepStack-systeem |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 6 | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |

## Outputs

- `Boolean`

## Related Links

- [Unregister-Face on GitHub](https://github.com/genXdev/genXdev)
