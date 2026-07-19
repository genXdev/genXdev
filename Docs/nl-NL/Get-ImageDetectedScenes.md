# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Classificeert een afbeelding in een van 365 scènekategorieën met behulp van DeepStack.

## Description

Deze functie analyseert een afbeeldingsbestand om het te classificeren in een van de 365 verschillende scènecategorieën. Het gebruikt een lokale DeepStack-scèneherkennings-API die draait op een configureerbare poort en retourneert de scèneclassificatie met een betrouwbaarheidsscore. De functie ondersteunt GPU-versnelling en Docker-containerbeheer.

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het lokale pad naar het afbeeldingsbestand om te analyseren |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | Minimum drempel voor vertrouwen (0,0-1,0). Standaard is 0,0 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | Named | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |

## Examples

### Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg" Classifies the scene in the specified image using default settings.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg"
Classifies the scene in the specified image using default settings.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU
Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU Classifies the scene using GPU acceleration for faster processing.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU
Classifies the scene using GPU acceleration for faster processing.
```

### "C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes Pipeline support for processing multiple images.

```powershell
"C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes
Pipeline support for processing multiple images.
```

## Related Links

- [Get-ImageDetectedScenes on GitHub](https://github.com/genXdev/genXdev)
