# Invoke-ImageEnhancement

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `enhanceimage

## Synopsis

> Verbetert een afbeelding door deze 4X te vergroten en de kwaliteit te verbeteren met DeepStack.

## Description

Deze functie verbetert een afbeelding door deze te vergroten tot 4 keer de oorspronkelijke breedte en hoogte, en tegelijkertijd de kwaliteit van de afbeelding te verhogen. Het maakt gebruik van een lokale DeepStack-afbeeldingsverbeterings-API die draait op een configureerbare poort en retourneert de verbeterde afbeelding als base64-gegevens of slaat deze op in een bestand. De functie ondersteunt GPU-versnelling en Docker-containerbeheer.

## Syntax

```powershell
Invoke-ImageEnhancement -ImagePath <String> [[-OutputPath] <String>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het lokale pad naar het afbeeldingsbestand om te verbeteren |
| `-OutputPath` | String | — | — | 1 | — | Optioneel pad waar de verbeterde afbeelding moet worden opgeslagen |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | Named | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker Desktop-venster tijdens initialisatie |

## Examples

### Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `                         -OutputPath "C:\Users\YourName\enhanced_photo.jpg" Enhances the image and saves it to the specified output path.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `
                        -OutputPath "C:\Users\YourName\enhanced_photo.jpg"
Enhances the image and saves it to the specified output path.
```

### enhanceimage "C:\photos\low_quality.jpg" Enhances the image and returns the base64 data and dimensions using alias.

```powershell
enhanceimage "C:\photos\low_quality.jpg"
Enhances the image and returns the base64 data and dimensions using alias.
```

### Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU Enhances the image using GPU acceleration for faster processing.

```powershell
Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU
Enhances the image using GPU acceleration for faster processing.
```

## Related Links

- [Invoke-ImageEnhancement on GitHub](https://github.com/genXdev/genXdev)
