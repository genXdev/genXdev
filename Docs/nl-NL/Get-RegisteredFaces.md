# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt een lijst op van alle geregistreerde gezichts-ID's van DeepStack.

## Description

Deze functie maakt verbinding met een lokale DeepStack gezichtsherkennings-API en haalt alle geregistreerde gezichtsidentifiers op. Het gebruikt het /v1/vision/face/list-eindpunt om de DeepStack-service te raadplegen en retourneert een reeks gezichtsidentificatiestrings. De functie behandelt de initialisatie van Docker-containers, API-communicatie en foutafhandeling voor verschillende storingsscenario's.

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

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

Dit voorbeeld haalt alle geregistreerde gezichten op met standaardparameters.

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

Dit voorbeeld forceert een herbouw van de container en gebruikt GPU-versnelling.

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

Dit voorbeeld gebruikt een aangepaste containernaam en poortnummer.

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

Dit voorbeeld haalt alle gezichten op en filtert op die met "John" beginnen.

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)
