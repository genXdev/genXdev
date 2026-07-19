# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft alle verfügbaren Standard-LLM-Einstellungskonfigurationen für KI-Operationen in GenXdev.AI ab.

## Description

Ruft den vollständigen Satz der Standardeinstellungen für Large Language Models (LLM) ab, die für KI-Operationen konfiguriert sind. Ergebnisse können nach Abfragetyp, Modellkennung, API-Endpunkt oder API-Schlüssel gefiltert werden. Unterstützt sowohl sitzungsbasierte als auch persistente präferenzbasierte Abfragen mit Optionen zum Löschen des Sitzungszustands oder zur vollständigen Umgehung, um direkt aus gespeicherten Einstellungen zu lesen.

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Der Typ der LLM-Abfrage, um Einstellungen zu erhalten |
| `-Model` | String | — | — | Named | — | Filter configurations by model identifier or pattern |
| `-ApiEndpoint` | String | — | — | Named | — | Konfigurationen nach API-Endpunkt-URL filtern |
| `-ApiKey` | String | — | — | Named | — | Filter configurations by API key |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellungen überspringen und nur aus Präferenzen oder Standardwerten beziehen |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Ruft alle verfügbaren Standardkonfigurationen für den Abfragetyp Coding ab.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
