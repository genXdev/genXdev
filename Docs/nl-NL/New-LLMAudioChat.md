# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat`

## Synopsis

> Maakt een interactieve audiochatsessie met een LLM-model.

## Description

Start een op spraak gebaseerd gesprek met een taalmodel, met ondersteuning voor audio invoer en uitvoer. De functie handelt audio-opname, transcriptie, modelquery's en tekst-naar-spraak reacties af. Ondersteunt meerdere taalmodellen en diverse configuratieopties, waarandoor vensterbeheer, GPU-versnelling en geavanceerde audioverwerkingsfuncties.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Initieel querytekst om naar het model te sturen |
| `-Instructions` | String | — | — | 1 | — | .PARAMETER ServerName
De naam van de SQL Server-instantie. |
| `-Attachments` | String[] | — | — | 2 | `@()` | Matrix van bestandspaden om bij te voegen |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Te gebruiken Whisper-modeltype, standaard LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Temperatuur voor herkenning van audio-invoer (0,0-1,0) |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatuur voor respons willekeurigheid (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | De temperatuurparameter voor het regelen van de willekeurigheid van de reactie. |
| `-LanguageIn` | String | — | — | Named | — | Stelt de te detecteren taal in |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Aantal CPU-threads om te gebruiken, standaard 0 (automatisch) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex om tokens uit de uitvoer te onderdrukken |
| `-AudioContextSize` | Int32 | — | — | Named | — | Grootte van de audiocontext |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Stille-detectiedrempel (0..32767, standaard 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Lengteboete |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropiedrempel |
| `-LogProbThreshold` | Single | — | — | Named | — | Drempelwaarde voor logaritmische waarschijnlijkheid |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Geen spraakdrempel |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen |
| `-ImageDetail` | String | — | — | Named | `'low'` | Detailniveau van de afbeelding |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-bewerkingen |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geverifieerde AI-operaties |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | Toont toolketenaanroepen in de console |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out in seconden voor AI-operaties |
| `-ResponseFormat` | String | — | — | Named | `$null` | Een JSON-schema voor de gevraagde uitvoerindeling |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Geeft alleen markup-blokken van de opgegeven typen uit |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando's definities om als hulpmiddelen te gebruiken |
| `-Functions` | ScriptBlock[] | — | — | Named | — | ScriptBlock-array van toolfuncties om beschikbaar te stellen aan de LLM (doorgeven aan Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array van tool functienamen die geen bevestiging vereisen (doorgeven aan Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Chatmodus voor LLM-query (doorvoer naar Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale terugbelingslengte van hulpmiddel (doorgeven aan Invoke-LLMQuery) |
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
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak voor AI-antwoorden uit |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Schakel tekst-naar-spraak uit voor AI-gedachteresponsen |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Gebruik geen stilteherkenning om de opname automatisch te stoppen. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Of er gebruik wordt gemaakt van desktopaudiocaptuur in plaats van microfooningang |
| `-AudioDevice` | String | — | — | Named | — | Naam van audioapparaat of GUID (ondersteunt jokertekens, kiest eerste overeenkomst) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Gebruik zowel desktop als opnameapparaat |
| `-NoContext` | SwitchParameter | — | — | Named | — | Gebruik geen context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Gebruik beam search samplingstrategie |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Of u herkende tekst in de uitvoer wilt onderdrukken |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Sessie niet opslaan in sessiecache |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Zal alleen blokmarkup-antwoorden uitvoeren |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Parameter Details

### `-Query <String>`

> Initieel querytekst om naar het model te sturen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
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
### `-ModelType <String>`

> Te gebruiken Whisper-modeltype, standaard LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SmallEn'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperatuur voor herkenning van audio-invoer (0,0-1,0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
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
### `-TemperatureResponse <Double>`

> De temperatuurparameter voor het regelen van de willekeurigheid van de reactie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.01` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Stelt de te detecteren taal in

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Language` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Aantal CPU-threads om te gebruiken, standaard 0 (automatisch)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Regex om tokens uit de uitvoer te onderdrukken

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Grootte van de audiocontext

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Stille-detectiedrempel (0..32767, standaard 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `30` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> Lengteboete

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> Entropiedrempel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> Drempelwaarde voor logaritmische waarschijnlijkheid

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> Geen spraakdrempel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | `'ToolUse'` |
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
### `-ShowToolChainInvocations`

> Toont toolketenaanroepen in de console

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
### `-MarkupBlocksTypeFilter <String[]>`

> Geeft alleen markup-blokken van de opgegeven typen uit

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` |
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
### `-Functions <ScriptBlock[]>`

> ScriptBlock-array van toolfuncties om beschikbaar te stellen aan de LLM (doorgeven aan Invoke-LLMQuery)

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

> Array van tool functienamen die geen bevestiging vereisen (doorgeven aan Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> Chatmodus voor LLM-query (doorvoer naar Invoke-LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Maximale terugbelingslengte van hulpmiddel (doorgeven aan Invoke-LLMQuery)

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
### `-DontSpeak`

> Schakel tekst-naar-spraak voor AI-antwoorden uit

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

> Schakel tekst-naar-spraak uit voor AI-gedachteresponsen

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

> Gebruik geen stilteherkenning om de opname automatisch te stoppen.

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

> Of er gebruik wordt gemaakt van desktopaudiocaptuur in plaats van microfooningang

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> Naam van audioapparaat of GUID (ondersteunt jokertekens, kiest eerste overeenkomst)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> Gebruik zowel desktop als opnameapparaat

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

> Gebruik geen context

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

> Gebruik beam search samplingstrategie

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

> Of u herkende tekst in de uitvoer wilt onderdrukken

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
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-GenXdevMCPToken.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-DeepLinkImageFile.md)
