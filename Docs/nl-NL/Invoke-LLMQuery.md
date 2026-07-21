# Invoke-LLMQuery

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `qllm`, `llm`

## Synopsis

> Stuurt query's naar een OpenAI-compatibele Large Language Chat-aanvullings-API en verwerkt antwoorden.

## Description

Deze functie stuurt queries naar een OpenAI-compatibele Large Language Chat-voltooiings-API en verwerkt antwoorden. Het ondersteunt tekst- en afbeeldingsinvoer, verwerkt tool-functieaanroepen en kan in verschillende chatmodi werken, waaronder tekst en audio.

De functie biedt uitgebreide ondersteuning voor LLM-interactie, waaronder:
- Verwerking van tekst- en afbeeldingsinvoer
- Aanroepen van tool-functies en uitvoeren van opdrachten
- Interactieve chatmodi (tekst en audio)
- Initialisatie en configuratie van modellen
- Formattering en verwerking van antwoorden
- Sessiebeheer en caching
- Positie en weergavebesturing van vensters

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilterForJsonOutput] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-QuietToolChainInvocations] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | .SYNOPSIS
Beheert een of meer LUN's op een Azure-gebaseerde Storage-kostenprovideraccount.

.DESCRIPTION
De cmdlet New-AzsStorageLUNs beheert een of meer LUN's op een Azure-gebaseerde Storage-kostenprovideraccount. LUN's kunnen worden gebruikt om opslagruimte te leveren aan een Scale-Unit.

.PARAMETER InputObject
Deze parameter is vereist voor PowerShell-pijplijninvoer.

.PARAMETER ResourceId
De Azure-resourcemanager-ID van de Storage-kostenprovideraccount waarvoor de LUN's worden beheerd.

.PARAMETER LUNs
Lijst met LUN's die moeten worden beheerd.

.PARAMETER AsJob

.PARAMETER Force
Hiermee wordt de PowerShell-cmdlet uitgevoerd zonder om bevestiging te vragen.

.EXAMPLE

New-AzsStorageLUNs -InputObject $StorageSubSystem -LUNs $LUNs |
| `-Instructions` | String | — | — | 1 | — | .PARAMETER ServerName
De naam van de SQL Server-instantie. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matrix van bestandspaden om bij te voegen |
| `-ResponseFormat` | String | — | — | Named | — | Een JSON-schema voor de gevraagde uitvoerindeling |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor respons willekeurigheid (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matrix van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array van PowerShell-commando's definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Toolfuncties die geen bevestiging van de gebruiker vereisen |
| `-QuietToolChainInvocations` | SwitchParameter | — | — | Named | — | Onderdrukt Write-Host-uitvoer tijdens tussenliggende toolketenaanroepen. |
| `-ImageDetail` | String | — | — | Named | `'low'` | Detailniveau van de afbeelding |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-bewerkingen |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geverifieerde AI-operaties |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out in seconden voor AI-operaties |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatuur voor willekeur bij het genereren van audio |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatuur voor willekeur in reacties (audiochat) |
| `-Language` | String | — | — | Named | — | Taalcode of naam voor audiogesprek |
| `-CpuThreads` | Int32 | — | — | Named | — | Aantal CPU-threads voor audiochat |
| `-SuppressRegex` | String | — | — | Named | — | Reguliere expressie om bepaalde uitvoer in audiochat te onderdrukken |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio contextgrootte voor audiochat |
| `-SilenceThreshold` | Double | — | — | Named | — | Stilte drempel voor audiogesprek |
| `-LengthPenalty` | Double | — | — | Named | — | Lengtestraf voor audiochatreacties |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropiedrempel voor audiogesprek |
| `-LogProbThreshold` | Double | — | — | Named | — | Logkansdrempel voor audiochat |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Geen spraakdrempel voor audiogesprek |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Geen audio-antwoorden spreken |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | .SYNOPSIS
Hiermee wordt de status van Windows- en Linux-clients opgevraagd.

.DESCRIPTION
De cmdlet Get-ClientStatus haalt de status op van de clients die zijn geregistreerd bij de Configuration Manager-site.

.PARAMETER SiteCode
Geeft de sitecode van de Configuration Manager-site op.

.PARAMETER ClientType
Geeft het type client op. De waarden zijn: Windows, Linux, of All.

.EXAMPLE
Get-ClientStatus -SiteCode "ABC" -ClientType "Windows"

.NOTES
Deze cmdlet vereist beheerdersrechten voor de Configuration Manager-site. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Schakel VOX (spraakactivering) uit voor audiochat |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Gebruik desktop audio-opname voor audiogesprek |
| `-NoContext` | SwitchParameter | — | — | Named | — | Context voor audiogesprek uitschakelen |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik beam search sampling strategie voor audio chat |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .PARAMETER naam

Het patroon dat overeenkomt met het op te halen register. Het patroonfilter wordt toegepast op de registerinhoud voordat deze aan de opdrachtregel wordt doorgegeven. |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Denkprocessen uitsluiten van de gespreksgeschiedenis |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Doorgaan vanaf het laatste gesprek |
| `-Speak` | SwitchParameter | — | — | Named | — | Tekst-naar-spraak inschakelen voor AI-antwoorden |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Spraak naar tekst inschakelen voor AI-denkenresponses |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Zal alleen blokmarkup-antwoorden uitvoeren |
| `-FilterForJsonOutput` | SwitchParameter | — | — | Named | — | Extraheert het buitenste JSON-object of -array uit het antwoord, waarbij markdown-omheiningen en omringende tekst worden verwijderd. Wordt automatisch ingeschakeld wanneer -ResponseFormat is ingesteld; gebruik deze schakelaar om dit af te dwingen voor gewone-tekstaanroepen die JSON-uitvoer verwachten. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Geeft alleen markup-blokken van de opgegeven typen uit |
| `-ChatMode` | String | — | — | Named | — | Chatmodus inschakelen |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Intern gebruikt, om de chatmodus slechts eenmaal aan te roepen na de llm-aanroep |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sessie niet opslaan in sessiecache |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Maximale lengte van tool callback uitvoer in tekens. Uitvoer die deze lengte overschrijdt, wordt afgekapt met een waarschuwingsbericht. Standaard is 100000 tekens. |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

Verzendt een eenvoudige wiskundige query naar het qwen-model met gespecificeerde temperatuur.

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

Gebruikt de alias om een query met standaardparameters te verzenden.

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

Verzendt een query met een afbeelding als bijlage voor analyse.

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

Start een interactieve tekstchat-sessie met het opgegeven model.

## Parameter Details

### `-Query <String>`

> .SYNOPSIS
Beheert een of meer LUN's op een Azure-gebaseerde Storage-kostenprovideraccount.

.DESCRIPTION
De cmdlet New-AzsStorageLUNs beheert een of meer LUN's op een Azure-gebaseerde Storage-kostenprovideraccount. LUN's kunnen worden gebruikt om opslagruimte te leveren aan een Scale-Unit.

.PARAMETER InputObject
Deze parameter is vereist voor PowerShell-pijplijninvoer.

.PARAMETER ResourceId
De Azure-resourcemanager-ID van de Storage-kostenprovideraccount waarvoor de LUN's worden beheerd.

.PARAMETER LUNs
Lijst met LUN's die moeten worden beheerd.

.PARAMETER AsJob

.PARAMETER Force
Hiermee wordt de PowerShell-cmdlet uitgevoerd zonder om bevestiging te vragen.

.EXAMPLE

New-AzsStorageLUNs -InputObject $StorageSubSystem -LUNs $LUNs

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
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
### `-ResponseFormat <String>`

> Een JSON-schema voor de gevraagde uitvoerindeling

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Toolfuncties die geen bevestiging van de gebruiker vereisen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-QuietToolChainInvocations`

> Onderdrukt Write-Host-uitvoer tijdens tussenliggende toolketenaanroepen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-Gpu <Int32>`

> The `-Gpu` parameter.

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
### `-AudioTemperature <Double>`

> Temperatuur voor willekeur bij het genereren van audio

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

> Temperatuur voor willekeur in reacties (audiochat)

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

> Taalcode of naam voor audiogesprek

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

> Aantal CPU-threads voor audiochat

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

> Reguliere expressie om bepaalde uitvoer in audiochat te onderdrukken

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

> Audio contextgrootte voor audiochat

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

> Stilte drempel voor audiogesprek

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

> Lengtestraf voor audiochatreacties

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

> Entropiedrempel voor audiogesprek

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

> Logkansdrempel voor audiochat

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

> Geen spraakdrempel voor audiogesprek

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

> Geen audio-antwoorden spreken

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

> .SYNOPSIS
Hiermee wordt de status van Windows- en Linux-clients opgevraagd.

.DESCRIPTION
De cmdlet Get-ClientStatus haalt de status op van de clients die zijn geregistreerd bij de Configuration Manager-site.

.PARAMETER SiteCode
Geeft de sitecode van de Configuration Manager-site op.

.PARAMETER ClientType
Geeft het type client op. De waarden zijn: Windows, Linux, of All.

.EXAMPLE
Get-ClientStatus -SiteCode "ABC" -ClientType "Windows"

.NOTES
Deze cmdlet vereist beheerdersrechten voor de Configuration Manager-site.

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

> Schakel VOX (spraakactivering) uit voor audiochat

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

> Gebruik desktop audio-opname voor audiogesprek

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

> Context voor audiogesprek uitschakelen

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

> Gebruik beam search sampling strategie voor audio chat

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

> .PARAMETER naam

Het patroon dat overeenkomt met het op te halen register. Het patroonfilter wordt toegepast op de registerinhoud voordat deze aan de opdrachtregel wordt doorgegeven.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-DontAddThoughtsToHistory`

> Denkprocessen uitsluiten van de gespreksgeschiedenis

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
### `-OutputMarkdownBlocksOnly`

> Zal alleen blokmarkup-antwoorden uitvoeren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilterForJsonOutput`

> Extraheert het buitenste JSON-object of -array uit het antwoord, waarbij markdown-omheiningen en omringende tekst worden verwijderd. Wordt automatisch ingeschakeld wanneer -ResponseFormat is ingesteld; gebruik deze schakelaar om dit af te dwingen voor gewone-tekstaanroepen die JSON-uitvoer verwachten.

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

> Geeft alleen markup-blokken van de opgegeven typen uit

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Chatmodus inschakelen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> Intern gebruikt, om de chatmodus slechts eenmaal aan te roepen na de llm-aanroep

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
### `-MaxToolcallBackLength <Int32>`

> Maximale lengte van tool callback uitvoer in tekens. Uitvoer die deze lengte overschrijdt, wordt afgekapt met een waarschuwingsbericht. Standaard is 100000 tekens.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `100000` |
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
