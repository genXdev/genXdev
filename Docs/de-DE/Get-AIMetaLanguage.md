# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> Ruft die konfigurierte Standardsprache für Bildmetadaten-Operationen ab.

## Description

* Dieses Cmdlet ruft die Standardsprache ab, die vom Modul GenXdev.AI für Bildmetadatenoperationen verwendet wird.
* Es prüft zuerst globale Variablen (sofern nicht SkipSession angegeben ist), greift dann auf persistente Einstellungen zurück und verwendet schließlich Systemstandards.

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Die Standardsprache für Bildmetadaten-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

Rufen Sie die aktuell konfigurierte Sprache aus globalen Variablen oder Einstellungen ab.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

Die konfigurierte Sprache aus den dauerhaften Einstellungen abrufen, Sitzung ignorieren.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

Lösche die Sitzungseinstellung und hole die Sprache aus den persistenten Einstellungen.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
