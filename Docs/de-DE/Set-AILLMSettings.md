# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
