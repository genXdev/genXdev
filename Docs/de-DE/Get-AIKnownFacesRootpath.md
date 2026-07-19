# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft das konfigurierte Verzeichnis für Gesichtsbilddateien ab, die in GenXdev.AI-Operationen verwendet werden.

## Description

Diese Funktion ruft das globale Gesichtsverzeichnis ab, das vom GenXdev.AI-Modul für verschiedene Gesichtserkennungs- und KI-Operationen verwendet wird. Sie prüft zuerst globale Variablen (außer wenn SkipSession angegeben ist), greift dann auf persistente Einstellungen zurück und verwendet schließlich die Systemstandards.

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Verzeichnispfad für Gesichtsbilddateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

Ruft das aktuell konfigurierte Gesichterverzeichnis aus globalen Variablen oder den Einstellungen ab.

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

Ruft das konfigurierte Gesichterverzeichnis nur aus dauerhaften Einstellungen ab, wobei alle Sitzungseinstellungen ignoriert werden.

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

Löscht die Sitzungs-Gesichtsverzeichniseinstellung und ruft dann das Verzeichnis aus den dauerhaften Einstellungen ab.

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

Gibt das angegebene Verzeichnis nach Expansion des Pfades zurück.

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
