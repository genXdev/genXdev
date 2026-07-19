# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft die LLM-Einstellungen für KI-Operationen in GenXdev.AI ab.

## Description

Diese Funktion ruft die Einstellungen des großen Sprachmodells (LLM) ab, die vom Modul GenXdev.AI für verschiedene KI-Operationen verwendet werden. Die Einstellungen werden aus Sitzungsvariablen, persistenten Präferenzen oder der Standardeinstellungs-JSON-Datei in dieser Reihenfolge abgerufen. Die Funktion unterstützt die automatische Konfigurationsauswahl basierend auf dem verfügbaren Systemspeicher.

Die Speicherauswahlstrategie wird automatisch basierend auf den angegebenen Gpu- und Cpu-Parametern bestimmt:
- Wenn beide Parameter Gpu und Cpu angegeben sind: Verwendet kombinierten CPU + GPU-Speicher
- Wenn nur der Parameter Gpu angegeben ist: Bevorzugt GPU-Speicher (mit System-RAM-Fallback)
- Wenn nur der Parameter Cpu angegeben ist: Verwendet nur System-RAM
- Wenn kein Parameter angegeben ist: Verwendet kombinierten CPU + GPU-Speicher (Standard)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Der Typ der LLM-Abfrage, um Einstellungen zu erhalten |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | The endpoint supports json_schema response format. |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Ob der Endpunkt keine Bild-Upload-Funktion unterstützt |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Ob der Endpunkt keine Tool-Aufruffunktionalität unterstützt |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellungen überspringen und nur aus Präferenzen oder Standardwerten beziehen |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Ruft die LLM-Einstellungen für den SimpleIntelligence-Abfragetyp (Standard) ab.

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Ruft die LLM-Einstellungen für den Abfragetyp „Coding“ ab.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Ruft die LLM-Einstellungen aus den Voreinstellungen oder Standardwerten ab, wobei Sitzungseinstellungen ignoriert werden.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
