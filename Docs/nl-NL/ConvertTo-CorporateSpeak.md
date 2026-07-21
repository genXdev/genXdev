# ConvertTo-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `corporatize`

## Synopsis

> Zet directe of botte tekst om in beleefd, professioneel bedrijfsjargon met behulp van AI.

## Description

Deze functie verwerkt invoertekst om directe of mogelijk harde taal om te zetten in diplomatieke, professionele zakelijke communicatie. Het kan invoer rechtstreeks via parameters, uit de pijplijn of van het systeemklembord accepteren. De functie maakt gebruik van AI-modellen om tekst te analyseren en te herformuleren met behoud van de oorspronkelijke bedoeling.

## Syntax

```powershell
ConvertTo-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | De tekst om te converteren naar bedrijfstaal |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matrix van bestandspaden om bij te voegen |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor respons willekeurigheid (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Detailniveau van de afbeelding |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matrix van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando's definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Matrix van opdrachtnamen die geen bevestiging vereisen |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-bewerkingen |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geverifieerde AI-operaties |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out in seconden voor AI-operaties |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Kopieer de verbeterde tekst naar het klembord |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | ### Prestatiemeter voor het verzamelen van Azure Service Fabric-statistieken
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
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Doorgaan vanaf het laatste gesprek |
| `-Speak` | SwitchParameter | — | — | Named | — | Tekst-naar-spraak inschakelen voor AI-antwoorden |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Spraak naar tekst inschakelen voor AI-denkenresponses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sessie niet opslaan in sessiecache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Sta het gebruik van standaard AI-tools tijdens de verwerking toe |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor willekeur in audiorespons (doorgegeven aan LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor het genereren van respons (doorgegeven aan LLMQuery) |
| `-Language` | String | — | — | Named | — | Taalcode of -naam voor verwerking (doorgegeven aan LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads om te gebruiken (doorgegeven aan LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken (doorgegeven aan LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audiocontextgrootte voor verwerking (doorgegeven aan LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Stilledrempel voor audiodetectie (doorgegeven aan LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor het genereren van reeksen (doorgegeven aan LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering (doorgegeven aan LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Drempelwaarde voor logkans voor uitvoerfiltering (doorgegeven aan LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor audiodetectie (doorgegeven aan LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer uit (doorgegeven aan LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer uit voor gedachten (doorgegeven aan LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit (doorgegeven aan LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik bureaubladaudio-opname (doorgegeven aan LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Contextgebruik uitschakelen (doorgegeven aan LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Strategie voor beam-zoeken inschakelen (doorgegeven aan LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Haalt de Azure AD-verbonden tenantconfiguratie op.
.DESCRIPTION
    De cmdlet Get-AzureADTenantDetail haalt de configuratie van uw Azure AD-verbonden tenant op.
.PARAMETER TenantId
    De unieke id van de tenant. Als deze niet is opgegeven, wordt de standaardtenant gebruikt.
.EXAMPLE
    PS C:\> Get-AzureADTenantDetail
    
    Hiermee wordt de configuratie van de standaardtenant opgehaald.
.EXAMPLE
    PS C:\> Get-AzureADTenantDetail -TenantId '72f988bf-86f1-41af-91ab-2d7cd011db47'
    
    Hiermee wordt de configuratie van de opgegeven tenant opgehaald. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .PARAMETER Identity
Hiermee wordt het Active Directory-gebruikersobject opgegeven door een GUID-waarde op te geven die de identiteit vertegenwoordigt. De parameter Identity is positioneel.

U kunt ook een gebruiker opgeven door de Distinguished Name of Security Identifier (SID) in te voeren.

Andere parameters voor het opgeven van een gebruiker zijn: UPN (UserPrincipalName), SID (Security Identifier) of GUID (objectGUID) van de gebruiker.

Zie de sectie voor voorbeelden voor het gebruik van deze parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor markup bloktypes (doorgegeven aan LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbel lengte van tool (doorgegeven aan LLMQuery) |

## Examples

### ConvertTo-CorporateSpeak -Text "That's a terrible idea" -SetClipboard

```powershell
ConvertTo-CorporateSpeak -Text "That's a terrible idea" -SetClipboard
```

### "This makes no sense" | corporatize

```powershell
"This makes no sense" | corporatize
```

## Parameter Details

### `-Text <String>`

> De tekst om te converteren naar bedrijfstaal

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Matrix van bestandspaden om bij te voegen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
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
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Matrix van functiedefinities

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Array van PowerShell-commando's definities om als hulpmiddelen te gebruiken

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Matrix van opdrachtnamen die geen bevestiging vereisen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Het type LLM-query

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SimpleIntelligence'` |
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
### `-SetClipboard`

> Kopieer de verbeterde tekst naar het klembord

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
### `-ContinueLast`

> Doorgaan vanaf het laatste gesprek

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

> Tekst-naar-spraak inschakelen voor AI-antwoorden

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

> Spraak naar tekst inschakelen voor AI-denkenresponses

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

> Sessie niet opslaan in sessiecache

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> Sta het gebruik van standaard AI-tools tijdens de verwerking toe

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
### `-AudioTemperature <Double>`

> Temperatuur voor willekeur in audiorespons (doorgegeven aan LLMQuery)

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

> Temperatuur voor het genereren van respons (doorgegeven aan LLMQuery)

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

> Taalcode of -naam voor verwerking (doorgegeven aan LLMQuery)

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

> Aantal CPU-threads om te gebruiken (doorgegeven aan LLMQuery)

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

> Reguliere expressie om uitvoer te onderdrukken (doorgegeven aan LLMQuery)

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

> Audiocontextgrootte voor verwerking (doorgegeven aan LLMQuery)

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

> Stilledrempel voor audiodetectie (doorgegeven aan LLMQuery)

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

> Lengtestraf voor het genereren van reeksen (doorgegeven aan LLMQuery)

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

> Entropiedrempel voor uitvoerfiltering (doorgegeven aan LLMQuery)

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

> Drempelwaarde voor logkans voor uitvoerfiltering (doorgegeven aan LLMQuery)

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

> Geen spraakdrempel voor audiodetectie (doorgegeven aan LLMQuery)

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

> Schakel spraakuitvoer uit (doorgegeven aan LLMQuery)

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

> Schakel spraakuitvoer uit voor gedachten (doorgegeven aan LLMQuery)

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

> Schakel VOX (spraakactivering) uit (doorgegeven aan LLMQuery)

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

> Gebruik bureaubladaudio-opname (doorgegeven aan LLMQuery)

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

> Contextgebruik uitschakelen (doorgegeven aan LLMQuery)

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

> Strategie voor beam-zoeken inschakelen (doorgegeven aan LLMQuery)

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

> .SYNOPSIS
    Haalt de Azure AD-verbonden tenantconfiguratie op.
.DESCRIPTION
    De cmdlet Get-AzureADTenantDetail haalt de configuratie van uw Azure AD-verbonden tenant op.
.PARAMETER TenantId
    De unieke id van de tenant. Als deze niet is opgegeven, wordt de standaardtenant gebruikt.
.EXAMPLE
    PS C:\> Get-AzureADTenantDetail
    
    Hiermee wordt de configuratie van de standaardtenant opgehaald.
.EXAMPLE
    PS C:\> Get-AzureADTenantDetail -TenantId '72f988bf-86f1-41af-91ab-2d7cd011db47'
    
    Hiermee wordt de configuratie van de opgegeven tenant opgehaald.

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

> .PARAMETER Identity
Hiermee wordt het Active Directory-gebruikersobject opgegeven door een GUID-waarde op te geven die de identiteit vertegenwoordigt. De parameter Identity is positioneel.

U kunt ook een gebruiker opgeven door de Distinguished Name of Security Identifier (SID) in te voeren.

Andere parameters voor het opgeven van een gebruiker zijn: UPN (UserPrincipalName), SID (Security Identifier) of GUID (objectGUID) van de gebruiker.

Zie de sectie voor voorbeelden voor het gebruik van deze parameter.

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

> Filter voor markup bloktypes (doorgegeven aan LLMQuery)

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

> Maximale terugbel lengte van tool (doorgegeven aan LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/ConvertFrom-DiplomaticSpeak.md)
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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Update-AllImageMetaData.md)
