# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | Array van directorypaden om afbeeldingsupdates te verwerken |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Het poortnummer voor de DeepStack-service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | Named | — | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Minimale drempelwaarde voor betrouwbaarheid (0,0-1,0) voor objectdetectie |
| `-Language` | String | — | — | Named | — | De taal voor gegenereerde beschrijvingen en trefwoorden |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Naam of gedeeltelijk pad van het model dat moet worden geïnitialiseerd 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | API-eindpunt-URL, standaard http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | De API-sleutel die voor het verzoek moet worden gebruikt |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Time-out in seconden voor het verzoek, standaard 24 uur |
| `-FacesDirectory` | String | — | — | Named | — | De map met gezichtsafbeeldingen, geordend per persoonsmap. Indien niet gespecificeerd, wordt de geconfigureerde voorkeursmap voor gezichten gebruikt. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Eerdere mislukte updates van afbeeldingssleutelwoorden worden opnieuw geprobeerd |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Niet in submappen duiken bij het verwerken van afbeeldingen |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Voer alle afbeeldingen opnieuw uit, ongeacht eerdere verwerking |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Gebruik GPU-versnelde versie (vereist NVIDIA GPU) |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru om gestructureerde objecten terug te geven in plaats van naar console uit te voeren |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecteert wijzigingen in de map met gezichten en registreert gezichten opnieuw indien nodig |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Related Links

- [Update-AllImageMetaData on GitHub](https://github.com/genXdev/genXdev)
