# Invoke-ImageScenesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagescenedetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageScenesUpdate [[-ImageDirectories] <String[]>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | De directorypaden die afbeeldingen bevatten om te verwerken |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verwerk afbeeldingen in de opgegeven map en alle submappen |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Eerdere mislukte updates van afbeeldingssleutelwoorden worden opnieuw geprobeerd |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | Named | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Minimale drempelwaarde voor betrouwbaarheid (0,0-1,0) voor objectdetectie |
| `-Language` | String | — | — | Named | — | De taal voor gegenereerde beschrijvingen en trefwoorden |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Naam of gedeeltelijk pad van het model dat moet worden geïnitialiseerd 🌐 *Supports wildcards* |
| `-ApiKey` | String | — | — | Named | `$null` | De API-sleutel die voor het verzoek moet worden gebruikt |
| `-TimeoutSecond` | Int32 | — | — | Named | — | Time-out in seconden voor het verzoek, standaard 24 uur |
| `-FacesDirectory` | String | — | — | Named | — | De map met gezichtsafbeeldingen, geordend per persoonsmap. Indien niet gespecificeerd, wordt de geconfigureerde voorkeursmap voor gezichten gebruikt. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon Docker-venster tijdens initialisatie |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru om gestructureerde objecten terug te geven in plaats van naar console uit te voeren |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecteert wijzigingen in de map met gezichten en registreert gezichten opnieuw indien nodig |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Related Links

- [Invoke-ImageScenesUpdate on GitHub](https://github.com/genXdev/genXdev)
