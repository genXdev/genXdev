# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> Vergelijkt gezichten in twee verschillende afbeeldingen en geeft hun gelijkenis weer met behulp van DeepStack.

## Description

Deze functie vergelijkt gezichten tussen twee afbeeldingen om de gelijkenis te bepalen. Het maakt gebruik van een lokale DeepStack gezichtsherkennings-API die draait op een configureerbare poort en retourneert een gelijkenisscore tussen 0.0 en 1.0. Dit wordt doorgaans gebruikt voor het matchen van identiteitsdocumenten met foto's van een persoon of om te verifiëren of twee foto's dezelfde persoon tonen.

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | Het lokale pad naar het eerste afbeeldingsbestand dat moet worden vergeleken |
| `-ImagePath2` | String | ✅ | — | 1 | — | Het lokale pad naar het tweede afbeeldingsbestand om te vergelijken |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 7 | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |

## Examples

### Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `                    -ImagePath2 "C:\Users\YourName\photo2.jpg"

```powershell
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"
```

Vergelijkt gezichten tussen twee afbeeldingen met behulp van standaardinstellingen.

### comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

```powershell
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU
```

Vergelijkt gezichten met GPU-versnelling voor identiteitsverificatie met alias- en positionele parameters.

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)
