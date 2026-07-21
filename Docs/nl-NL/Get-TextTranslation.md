# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate`

## Synopsis

> Vertaalt tekst naar een andere taal met behulp van AI.

## Description

Deze functie vertaalt invoertekst naar een opgegeven doeltaal met behulp van AI-modellen. Het kan invoer rechtstreeks accepteren via parameters, vanuit de pijplijn of vanuit het systeemklembord. De functie behoudt de opmaak en stijl tijdens het vertalen.

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | ===== KRITISCHE JSON-UITVOERVEREISTE =====
Je MOET alleen reageren met geldige JSON. Geen andere tekst is toegestaan.
Voeg GEEN uitleg, commentaar of tekst voor of na de json toe.
Je antwoord moet parseerbare json zijn die PRECIES overeenkomt met dit schema:
{json_schema}

Voorbeeld van antwoordformaat: {"response":"je daadwerkelijke antwoord hier"}
===== EINDE VEREISTE ===== |
| `-Instructions` | String | — | — | 1 | — | .PARAMETER CimSession
Voert de cmdlet uit in een externe sessie of op een externe computer. Voer een computernaam of een sessieobject in, zoals de uitvoer van New-CimSession of Get-CimSession. De standaardwaarde is de huidige sessie op de lokale computer. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matrix van bestandspaden om bij te voegen |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor respons willekeurigheid (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Detailniveau van de afbeelding |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matrix van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando's definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Matrix van opdrachtnamen die geen bevestiging vereisen |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-bewerkingen |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geverifieerde AI-operaties |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's |
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
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor willekeur in audiorespons (doorgegeven aan LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor responsgeneratie (doorgegeven aan LLM) |
| `-Language` | String | — | — | Named | — | nl-NL |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads om te gebruiken (doorgegeven aan LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Reguliere expressie om uitvoer te onderdrukken (doorgegeven aan LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio contextgrootte voor verwerking (doorgegeven aan LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Drempel voor stilte bij audiodetectie (doorgegeven aan LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Lengteboete voor het genereren van sequenties (doorgegeven aan LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor uitvoerfiltering (doorgegeven aan LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Logkansdrempel voor uitvoerfiltering (doorgegeven aan LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor audiodetectie (doorgegeven aan LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Spraakuitvoer uitschakelen (doorgegeven aan LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel spraakuitvoer voor gedachten uit (doorgegeven aan LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit (doorgegeven aan LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop-audiocaptuur (doorgegeven aan LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Contextgebruik uitschakelen (doorgegeven aan LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Schakel de beam search-bemonsteringsstrategie in (doorgegeven aan LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | De parameter -Message vertegenwoordigt het bericht dat moet worden weergegeven. Dit is doorgaans een tekenreeks die u aan de gebruiker wilt laten zien. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Hiermee worden items toegevoegd aan een PowerShell-module.

.DESCRIPTION
De cmdlet `Add-PSModule` voegt items toe aan een PowerShell-module |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter voor markup-bloktypen (doorgegeven aan LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Sla de vertaalcache over; roep altijd de LLM API aan |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Wis de volledige vertaalcache voor alle talen |

## Examples

### Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"

```powershell
Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"
```

### "Bonjour" | translate -Language "English"

```powershell
"Bonjour" | translate -Language "English"
```

## Parameter Details

### `-Text <String>`

> ===== KRITISCHE JSON-UITVOERVEREISTE =====
Je MOET alleen reageren met geldige JSON. Geen andere tekst is toegestaan.
Voeg GEEN uitleg, commentaar of tekst voor of na de json toe.
Je antwoord moet parseerbare json zijn die PRECIES overeenkomt met dit schema:
{json_schema}

Voorbeeld van antwoordformaat: {"response":"je daadwerkelijke antwoord hier"}
===== EINDE VEREISTE =====

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .PARAMETER CimSession
Voert de cmdlet uit in een externe sessie of op een externe computer. Voer een computernaam of een sessieobject in, zoals de uitvoer van New-CimSession of Get-CimSession. De standaardwaarde is de huidige sessie op de lokale computer.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
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
### `-LLMType <String>`

> Het type LLM-query

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'TextTranslation'` |
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

> Temperatuur voor willekeur in audiorespons (doorgegeven aan LLM)

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

> Temperatuur voor responsgeneratie (doorgegeven aan LLM)

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

> nl-NL

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

> Aantal CPU-threads om te gebruiken (doorgegeven aan LLM)

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

> Reguliere expressie om uitvoer te onderdrukken (doorgegeven aan LLM)

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

> Audio contextgrootte voor verwerking (doorgegeven aan LLM)

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

> Drempel voor stilte bij audiodetectie (doorgegeven aan LLM)

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

> Lengteboete voor het genereren van sequenties (doorgegeven aan LLM)

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

> Entropiedrempel voor uitvoerfiltering (doorgegeven aan LLM)

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

> Logkansdrempel voor uitvoerfiltering (doorgegeven aan LLM)

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

> Geen spraakdrempel voor audiodetectie (doorgegeven aan LLM)

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

> Spraakuitvoer uitschakelen (doorgegeven aan LLM)

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

> Schakel spraakuitvoer voor gedachten uit (doorgegeven aan LLM)

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

> Schakel VOX (spraakactivering) uit (doorgegeven aan LLM)

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

> Gebruik desktop-audiocaptuur (doorgegeven aan LLM)

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

> Contextgebruik uitschakelen (doorgegeven aan LLM)

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

> Schakel de beam search-bemonsteringsstrategie in (doorgegeven aan LLM)

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

> De parameter -Message vertegenwoordigt het bericht dat moet worden weergegeven. Dit is doorgaans een tekenreeks die u aan de gebruiker wilt laten zien.

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

> .SYNOPSIS
Hiermee worden items toegevoegd aan een PowerShell-module.

.DESCRIPTION
De cmdlet `Add-PSModule` voegt items toe aan een PowerShell-module

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

> Filter voor markup-bloktypen (doorgegeven aan LLM)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoCache`

> Sla de vertaalcache over; roep altijd de LLM API aan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearCache`

> Wis de volledige vertaalcache voor alle talen

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-SpeechToText.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-DeepLinkImageFile.md)
