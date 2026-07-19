# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Legt die LLM-Einstellungen für KI-Operationen in GenXdev.AI fest.

## Description

[int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Gibt an, dass der Endpunkt das json_schema-Antwortformat nicht unterstützt'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Gibt an, dass der Endpunkt das Hochladen von Bildern nicht unterstützt'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Gibt an, dass der Endpunkt die Funktion zum Aufrufen von Tools nicht unterstützt'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Speichert die Einstellungen nur in der aktuellen Sitzung, ohne ' +
                'sie dauerhaft zu speichern')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Löscht alternative Einstellungen, die in der Sitzung für KI-' +
                'Präferenzen gespeichert wurden')
        )]
        [switch] $ClearSession, verwaltet die LLM-Einstellungen (Large Language Model), die vom
GenXdev.AI-Modul für verschiedene KI-Operationen verwendet werden. Einstellungen können dauerhaft
in den Voreinstellungen (Standard), nur in der aktuellen Sitzung (mit -SessionOnly) oder
aus der Sitzung gelöscht (mit -ClearSession) gespeichert werden. Die Funktion stellt sicher, dass
mindestens ein Einstellungsparameter angegeben wird, es sei denn, die Sitzungseinstellungen werden gelöscht.

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | 1 | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | 7 | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | 8 | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | The endpoint supports json_schema response format. |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Ob der Endpunkt keine Bild-Upload-Funktion unterstützt |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Ob der Endpunkt keine Tool-Aufruffunktionalität unterstützt |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

Legt die LLM-Einstellungen für den Abfragetyp "Coding" dauerhaft in den Voreinstellungen fest.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

Setzt die LLM-Einstellungen für SimpleIntelligence nur für die aktuelle
Sitzung.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Löscht die Sitzungs-LLM-Einstellungen für den Bildabfragetyp, ohne dauerhafte Einstellungen zu beeinflussen.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

Legt die LLM-Einstellungen für den Abfragetyp "Coding" mithilfe von Positionsparametern fest.
##############################################################################

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
