# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Analyseert afbeeldingsinhoud met behulp van AI-visiemogelijkheden

## Description

Verwerkt afbeeldingen met behulp van AI-visiecapaciteiten om inhoud te analyseren en vragen over de afbeelding te beantwoorden. De functie ondersteunt verschillende analyseparameters, waaronder temperatuurregeling voor responstoenvalligheid en tokenlimieten voor de uitvoerlengte.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | De query-reeks voor het analyseren van de afbeelding |
| `-ImagePath` | String | ✅ | — | 1 | — | Pad naar het afbeeldingsbestand voor analyse |
| `-Instructions` | String | — | — | 2 | — | .PARAMETER ServerName
De naam van de SQL Server-instantie. |
| `-ResponseFormat` | String | — | — | Named | `$null` | Een JSON-schema voor de gevraagde uitvoerindeling |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor respons willekeurigheid (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Detailniveau van de afbeelding |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-bewerkingen |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geverifieerde AI-operaties |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out in seconden voor AI-operaties |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | ### Prestatiemeter voor het verzamelen van Azure Service Fabric-statistieken
Gebruik de cmdlet **Get-AzureServiceFabricMetric** om statistieken voor Azure Service Fabric-toepassingen en -knooppunten op te halen. De cmdlet heeft de volgende parameters en retourneert een object dat de metrische gegevens bevat.

## Syntaxis

### Toepassing metriek ophalen
```powershell
Get-AzureServiceFabricMetric
    [-ApplicationName] <Uri>
    [-MetricName] <String>
    [-Duration] <TimeSpan>
    [[-PartitionId] <Guid>]
    [[-Statistic] <String>]
    [<CommonParameters>]
```

### Knooppunt metriek ophalen
```powershell
Get-AzureServiceFabricMetric
    [-NodeName] <String>
    [-MetricName] <String>
    [-Duration] <TimeSpan>
    [[-Statistic] <String>]
    [<CommonParameters>]
```

## Beschrijving

De **Get-AzureServiceFabricMetric** cmdlet haalt metrische gegevens op voor een Azure Service Fabric-toepassing of -knooppunt. U kunt metriek ophalen voor een bepaalde toepassing (met optionele partitie-id) of voor een specifiek knooppunt. De metriek worden verzameld over de opgegeven tijdsduur en kunnen worden geaggregeerd met een statistiek zoals gemiddelde, som, min of max.

## Parameters

### -ApplicationName
Geeft de naam op van de Service Fabric-toepassing waarvoor metriek worden opgehaald. Dit moet een geldige URI zijn, zoals `fabric:/MijnToepassing`.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | Uri    |
| Vereist:   | Ja (bij het ophalen van toepassingsmetriek) |
| Positie:   | 0      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -NodeName
Geeft de naam op van het knooppunt waarvoor metriek worden opgehaald.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | String |
| Vereist:   | Ja (bij het ophalen van knooppuntmetriek) |
| Positie:   | 0      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -MetricName
Geeft de naam op van de metriek die moet worden opgehaald, bijvoorbeeld `cpu`, `memory` of `vip`.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | String |
| Vereist:   | Ja     |
| Positie:   | 1      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -Duration
Geeft de tijdsduur op waarvoor metriek worden verzameld, bijvoorbeeld `01:30:00` voor anderhalf uur.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | TimeSpan |
| Vereist:   | Ja     |
| Positie:   | 2      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -PartitionId
Geeft de partitie-ID op voor een gepartitioneerde toepassing. Optionele parameter.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | Guid   |
| Vereist:   | Nee    |
| Positie:   | 3      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -Statistic
Geeft de statistische aggregatie aan die op de metriek moet worden toegepast. Toegestane waarden: `Gemiddelde`, `Som`, `Min`, `Max`. Standaard is `Gemiddelde`.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | String |
| Vereist:   | Nee    |
| Positie:   | 4      |
| Standaardwaarde: | Gemiddelde |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

## Uitvoer

De cmdlet retourneert een **Microsoft.Azure.Commands.ServiceFabric.Models.PSMetric** object met de volgende eigenschappen:

- **Name**: De naam van de metriek.
- **Value**: De numerieke waarde van de metriek (dubbel).
- **Timestamp**: De tijdstempel van de meting (DateTime).
- **PartitionId**: De partitie-ID als van toepassing.
- **NodeName**: De naam van het knooppunt als van toepassing.

## Opmerkingen
- Deze cmdlet vereist dat de Service Fabric-cluster actief is en toegankelijk.
- Zorg ervoor dat u de juiste machtigingen hebt om metriek op te vragen.
- Metriek worden verzameld met het opgegeven tijdsinterval, maar de resolutie is afhankelijk van de monitoringconfiguratie van het cluster. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |
| `-Functions` | String[] | — | — | Named | — | Geeft de functies aan die voor de AI-bewerking moeten worden gebruikt. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Specificeert de blootgestelde cmdlets voor de AI-bewerking. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Specificeert de namen van gereedschapsfuncties die geen bevestiging vereisen. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor het genereren van audio-antwoorden. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor het genereren van de respons. |
| `-Language` | String | — | — | Named | — | De taal voor gegenereerde beschrijvingen en trefwoorden |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads om te gebruiken. |
| `-SuppressRegex` | String | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context grootte voor verwerking. |
| `-SilenceThreshold` | Double | — | — | Named | — | Stilte drempel voor audio verwerking. |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor sequentiegeneratie. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering. |
| `-LogProbThreshold` | Double | — | — | Named | — | Drempelwaarde voor logwaarschijnlijkheid bij uitvoerfiltering. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor audiodetectie. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Indien opgegeven, zeg de uitvoer niet. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Indien opgegeven, spreek de gedachten van het model niet uit. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Indien opgegeven, schakelt VOX uit. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Indien opgegeven, gebruik desktop audio-opname. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Indien opgegeven, schakelt het gebruik van de context uit. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Indien opgegeven, gebruik de beam search bemonsteringsstrategie. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Indien opgegeven, alleen antwoorden retourneren. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Indien opgegeven, voeg geen gedachten toe aan de geschiedenis. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Reparaties voor dit exemplaar moeten worden voltooid voordat de eenheid aan de toepassing wordt toegevoegd. |
| `-Speak` | SwitchParameter | — | — | Named | — | Spreek de uitvoer. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Spreek de gedachten van het model uit. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Deze cmdlet wordt alleen ondersteund op Windows-platforms.
Voor de Update-Help-cmdlet op Windows is uitvoering als beheerder vereist om de Help te updaten voor modules die in de map 'C:\Windows\System32' zijn geïnstalleerd. Deze afhankelijkheid is niet geïmplementeerd in PowerShell Core. Zie about_Update_Help voor meer informatie. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor markup-bloktypen. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Indien gespecificeerd, slechts één keer chatten. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Schakel sessiecaching uit. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbellenlengte voor toolaanroepen. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als de voorkeur is ingesteld voor installatie van het ImageSharp-pakket. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor ImageSharp-pakketten. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analyseert een afbeelding met specifieke temperatuur- en tokenlimieten.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Eenvoudige beeldanalyse met alias en positionele parameters.

## Parameter Details

### `-Query <String>`

> De query-reeks voor het analyseren van de afbeelding

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath <String>`

> Pad naar het afbeeldingsbestand voor analyse

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .PARAMETER ServerName
De naam van de SQL Server-instantie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> Een JSON-schema voor de gevraagde uitvoerindeling

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperatuur voor respons willekeurigheid (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Detailniveau van de afbeelding

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'high'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Het type LLM-query

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Pictures'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> De API-eindpunt-URL voor AI-bewerkingen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> De API-sleutel voor geverifieerde AI-operaties

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> De time-out in seconden voor AI-operaties

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Databasepad voor voorkeursgegevensbestanden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> ### Prestatiemeter voor het verzamelen van Azure Service Fabric-statistieken
Gebruik de cmdlet **Get-AzureServiceFabricMetric** om statistieken voor Azure Service Fabric-toepassingen en -knooppunten op te halen. De cmdlet heeft de volgende parameters en retourneert een object dat de metrische gegevens bevat.

## Syntaxis

### Toepassing metriek ophalen
```powershell
Get-AzureServiceFabricMetric
    [-ApplicationName] <Uri>
    [-MetricName] <String>
    [-Duration] <TimeSpan>
    [[-PartitionId] <Guid>]
    [[-Statistic] <String>]
    [<CommonParameters>]
```

### Knooppunt metriek ophalen
```powershell
Get-AzureServiceFabricMetric
    [-NodeName] <String>
    [-MetricName] <String>
    [-Duration] <TimeSpan>
    [[-Statistic] <String>]
    [<CommonParameters>]
```

## Beschrijving

De **Get-AzureServiceFabricMetric** cmdlet haalt metrische gegevens op voor een Azure Service Fabric-toepassing of -knooppunt. U kunt metriek ophalen voor een bepaalde toepassing (met optionele partitie-id) of voor een specifiek knooppunt. De metriek worden verzameld over de opgegeven tijdsduur en kunnen worden geaggregeerd met een statistiek zoals gemiddelde, som, min of max.

## Parameters

### -ApplicationName
Geeft de naam op van de Service Fabric-toepassing waarvoor metriek worden opgehaald. Dit moet een geldige URI zijn, zoals `fabric:/MijnToepassing`.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | Uri    |
| Vereist:   | Ja (bij het ophalen van toepassingsmetriek) |
| Positie:   | 0      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -NodeName
Geeft de naam op van het knooppunt waarvoor metriek worden opgehaald.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | String |
| Vereist:   | Ja (bij het ophalen van knooppuntmetriek) |
| Positie:   | 0      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -MetricName
Geeft de naam op van de metriek die moet worden opgehaald, bijvoorbeeld `cpu`, `memory` of `vip`.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | String |
| Vereist:   | Ja     |
| Positie:   | 1      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -Duration
Geeft de tijdsduur op waarvoor metriek worden verzameld, bijvoorbeeld `01:30:00` voor anderhalf uur.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | TimeSpan |
| Vereist:   | Ja     |
| Positie:   | 2      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -PartitionId
Geeft de partitie-ID op voor een gepartitioneerde toepassing. Optionele parameter.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | Guid   |
| Vereist:   | Nee    |
| Positie:   | 3      |
| Standaardwaarde: | Geen |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

### -Statistic
Geeft de statistische aggregatie aan die op de metriek moet worden toegepast. Toegestane waarden: `Gemiddelde`, `Som`, `Min`, `Max`. Standaard is `Gemiddelde`.

| Eigenschap | Waarde |
|------------|--------|
| Type:      | String |
| Vereist:   | Nee    |
| Positie:   | 4      |
| Standaardwaarde: | Gemiddelde |
| Accepteer pijplijninvoer: | Onwaar |
| Accepteer jokertekens: | Onwaar |

## Uitvoer

De cmdlet retourneert een **Microsoft.Azure.Commands.ServiceFabric.Models.PSMetric** object met de volgende eigenschappen:

- **Name**: De naam van de metriek.
- **Value**: De numerieke waarde van de metriek (dubbel).
- **Timestamp**: De tijdstempel van de meting (DateTime).
- **PartitionId**: De partitie-ID als van toepassing.
- **NodeName**: De naam van het knooppunt als van toepassing.

## Opmerkingen
- Deze cmdlet vereist dat de Service Fabric-cluster actief is en toegankelijk.
- Zorg ervoor dat u de juiste machtigingen hebt om metriek op te vragen.
- Metriek worden verzameld met het opgegeven tijdsinterval, maar de resolutie is afhankelijk van de monitoringconfiguratie van het cluster.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <String[]>`

> Geeft de functies aan die voor de AI-bewerking moeten worden gebruikt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> Specificeert de blootgestelde cmdlets voor de AI-bewerking.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Specificeert de namen van gereedschapsfuncties die geen bevestiging vereisen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatuur voor het genereren van audio-antwoorden.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Temperatuur voor het genereren van de respons.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> De taal voor gegenereerde beschrijvingen en trefwoorden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Aantal CPU-threads om te gebruiken.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Reguliere expressie om uitvoer te onderdrukken.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Audio context grootte voor verwerking.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Stilte drempel voor audio verwerking.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Lengtestraf voor sequentiegeneratie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Entropiedrempel voor uitvoerfiltering.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Drempelwaarde voor logwaarschijnlijkheid bij uitvoerfiltering.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> Geen spraakdrempel voor audiodetectie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Indien opgegeven, zeg de uitvoer niet.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Indien opgegeven, spreek de gedachten van het model niet uit.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Indien opgegeven, schakelt VOX uit.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Indien opgegeven, gebruik desktop audio-opname.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Indien opgegeven, schakelt het gebruik van de context uit.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Indien opgegeven, gebruik de beam search bemonsteringsstrategie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> Indien opgegeven, alleen antwoorden retourneren.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Indien opgegeven, voeg geen gedachten toe aan de geschiedenis.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> Reparaties voor dit exemplaar moeten worden voltooid voordat de eenheid aan de toepassing wordt toegevoegd.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Spreek de uitvoer.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Spreek de gedachten van het model uit.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> Deze cmdlet wordt alleen ondersteund op Windows-platforms.
Voor de Update-Help-cmdlet op Windows is uitvoering als beheerder vereist om de Help te updaten voor modules die in de map 'C:\Windows\System32' zijn geïnstalleerd. Deze afhankelijkheid is niet geïmplementeerd in PowerShell Core. Zie about_Update_Help voor meer informatie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Filter voor markup-bloktypen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Indien gespecificeerd, slechts één keer chatten.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Schakel sessiecaching uit.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Maximale terugbellenlengte voor toolaanroepen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Forceer een toestemmingsprompt, zelfs als de voorkeur is ingesteld voor installatie van het ImageSharp-pakket.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor ImageSharp-pakketten.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-LLMTextTransformation.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Update-AllImageMetaData.md)
