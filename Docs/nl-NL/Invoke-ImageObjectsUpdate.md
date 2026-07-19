# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> Werk de metadata van objectdetectie bij voor afbeeldingsbestanden in een opgegeven map.

## Description

Deze functie verwerkt afbeeldingen in een opgegeven map om objecten te detecteren met behulp van kunstmatige intelligentie. Het maakt JSON-metadatabestanden aan die gedetecteerde objecten, hun posities, betrouwbaarheidsscores en labels bevatten. De functie ondersteunt batchverwerking met configureerbare betrouwbaarheidsdrempels en kan optioneel bestaande metadatabestanden overslaan of eerder mislukte detecties opnieuw proberen.

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | De directorypaden die afbeeldingen bevatten om te verwerken |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verwerk afbeeldingen in de opgegeven map en alle submappen |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Eerdere mislukte updates van afbeeldingssleutelwoorden worden opnieuw geprobeerd |
| `-Language` | String | — | — | Named | — | De taal voor gegenereerde beschrijvingen en trefwoorden |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

Dit voorbeeld verwerkt alle afbeeldingen in C:\Photos en D:\Pictures en alle submappen met standaardinstellingen en een drempelwaarde van 0,5 voor vertrouwen.

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

Dit voorbeeld verwerkt alleen nieuwe afbeeldingen en probeert eerder mislukte opnieuw in meerdere mappen met behulp van positionele parametersyntaxis.

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

Dit voorbeeld gebruikt GPU-versnelling met een hogere betrouwbaarheidsdrempel van 0,7 voor nauwkeurigere maar minder objectdetecties.

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
