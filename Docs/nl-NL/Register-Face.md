# Register-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Registreert een nieuw gezicht met de DeepStack gezichtsherkennings-API.

## Description

Deze functie registreert een gezichtsafbeelding met de DeepStack gezichtsherkennings-API door de afbeelding te uploaden naar het lokale API-eindpunt. Het zorgt ervoor dat de DeepStack-service draait en valideert het afbeeldingsbestand vóór het uploaden. De functie bevat herhaallogica, foutafhandeling en opruiming bij fouten.

## Syntax

```powershell
Register-Face -Identifier <String> -ImagePath <String[]> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | — | 0 | — | De unieke identificatie voor het gezicht (bijv. de naam van de persoon) |
| `-ImagePath` | String[] | ✅ | — | 1 | — | Array van lokale paden naar afbeeldingsbestanden (png, jpg, jpeg of gif) |
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

### Register-Face -Identifier "JohnDoe" -ImagePath @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")

```powershell
Register-Face -Identifier "JohnDoe" -ImagePath @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")
```

### Register-Face "JohnDoe" @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")

```powershell
Register-Face "JohnDoe" @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")
```

### Register-Face -Identifier "JohnDoe" -ImagePath "C:\Users\YourName\faces\john.jpg"

```powershell
Register-Face -Identifier "JohnDoe" -ImagePath "C:\Users\YourName\faces\john.jpg"
```

## Related Links

- [Register-Face on GitHub](https://github.com/genXdev/genXdev)
