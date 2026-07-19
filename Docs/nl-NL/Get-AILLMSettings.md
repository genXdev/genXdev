# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt de LLM-instellingen op voor AI-operaties in GenXdev.AI.

## Description

Deze functie haalt de LLM-instellingen (Large Language Model) op die door de GenXdev.AI-module worden gebruikt voor verschillende AI-bewerkingen. Instellingen worden opgehaald uit sessievariabelen, persistente voorkeuren of het standaard instellingen JSON-bestand, in die volgorde van prioriteit. De functie ondersteunt automatische configuratieselectie op basis van beschikbare systeemgeheugenbronnen.

De strategie voor geheugenselectie wordt automatisch bepaald op basis van de opgegeven Gpu- en Cpu-parameters:
- Als zowel Gpu- als Cpu-parameters zijn opgegeven: gebruikt gecombineerd CPU + GPU-geheugen
- Als alleen de Gpu-parameter is opgegeven: geeft de voorkeur aan GPU-geheugen (met systeem-RAM als fallback)
- Als alleen de Cpu-parameter is opgegeven: gebruikt alleen systeem-RAM
- Als geen van beide parameters is opgegeven: gebruikt gecombineerd CPU + GPU-geheugen (standaard)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Het type LLM-query om instellingen voor te verkrijgen |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | No, the endpoint does not support json_schema response format. |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Of het eindpunt geen functionaliteit voor het uploaden van afbeeldingen ondersteunt |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Of het endpoint geen ondersteuning biedt voor het aanroepen van tools |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sla sessie-instellingen over en haal alleen uit voorkeuren of standaardwaarden |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Haalt de LLM-instellingen op voor het querytype SimpleIntelligence (standaard).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Haalt de LLM-instellingen op voor het querytype Coderen.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Haalt de LLM-instellingen op uit voorkeuren of standaardwaarden, waarbij sessie-instellingen worden genegeerd.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
