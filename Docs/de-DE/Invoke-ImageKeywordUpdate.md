# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> Aktualisiert Bildmetadaten mit KI-generierten Beschreibungen und Schlüsselwörtern.

## Description

Die Funktion Invoke-ImageKeywordUpdate analysiert Bilder mithilfe von KI, um Beschreibungen, Schlüsselwörter und andere Metadaten zu generieren. Sie erstellt für jedes Bild eine begleitende JSON-Datei mit diesen Informationen. Die Funktion kann nur neue Bilder verarbeiten oder vorhandene Metadaten aktualisieren und unterstützt rekursives Verzeichnisscannen.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Die Verzeichnispfade, die Bilder zur Verarbeitung enthalten |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verarbeite Bilder im angegebenen Verzeichnis und allen Unterverzeichnissen |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Werde zuvor fehlgeschlagene Aktualisierungen von Bild-Keywords erneut versuchen |
| `-Language` | String | — | — | Named | — | Die Sprache für generierte Beschreibungen und Schlüsselwörter |
| `-FacesDirectory` | String | — | — | Named | — | Das Verzeichnis, das Gesichtsbilder enthält, organisiert nach Personenordnern. Falls nicht angegeben, wird das konfigurierte Standardverzeichnis für Gesichter verwendet. |
| `-Instructions` | String | — | — | 2 | — | Systemanweisungen für das Modell |
| `-ResponseFormat` | String | — | — | Named | `$null` | Ein JSON-Schema für das angeforderte Ausgabeformat |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Bilddetailstufe |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-Functions` | String[] | — | — | Named | — | Legt die für den KI-Betrieb zu verwendenden Funktionen fest. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Gibt die verfügbaren Cmdlets für den KI-Vorgang an. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Gibt die Namen von Werkzeugfunktionen an, die keine Bestätigung erfordern. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Falls angegeben, deaktiviert die Nutzung des Kontexts. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximale Rückruflänge für Tool-Aufrufe. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru, um strukturierte Objekte zurückzugeben, anstatt sie in der Konsole auszugeben |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Erkennt Änderungen im Verzeichnis 'faces' und registriert Gesichter bei Bedarf neu |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
