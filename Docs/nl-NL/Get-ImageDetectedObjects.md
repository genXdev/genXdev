# Get-ImageDetectedObjects

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Detecteert en classificeert objecten in een geüploade afbeelding met behulp van DeepStack.

## Description

Deze functie analyseert een afbeeldingsbestand om tot 80 verschillende soorten objecten te detecteren en classificeren. Het gebruikt een lokale DeepStack-objectdetectie-API die draait op een configureerbare poort en retourneert objectclassificaties met hun begrenzingskadcoördinaten en betrouwbaarheidsscores. De functie ondersteunt GPU-versnelling, aangepaste betrouwbaarheidsdrempels en Docker-containerbeheer.

## Syntax

```powershell
Get-ImageDetectedObjects -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het lokale pad naar het afbeeldingsbestand om te analyseren |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | Minimale betrouwbaarheidsdrempel (0,0-1,0). Standaard is 0,5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | Named | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |

## Examples

### Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `                          -ConfidenceThreshold 0.5 `                          -ServicePort 5000

```powershell
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000
```

Detecteert objecten in de opgegeven afbeelding met volledige parameternamen.

### Get-ImageDetectedObjects "C:\photos\street.jpg"

```powershell
Get-ImageDetectedObjects "C:\photos\street.jpg"
```

Detecteert objecten met behulp van positionele parameter en standaardinstellingen.

## Related Links

- [Get-ImageDetectedObjects on GitHub](https://github.com/genXdev/genXdev)
