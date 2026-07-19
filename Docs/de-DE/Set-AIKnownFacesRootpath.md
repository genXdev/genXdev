# Set-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Legt das Verzeichnis für Gesichtsbilddateien fest, die in GenXdev.AI-Operationen verwendet werden.

## Description

Diese Funktion konfiguriert das globale Gesichtsverzeichnis, das vom Modul GenXdev.AI für verschiedene Gesichtserkennungs- und KI-Operationen verwendet wird. Einstellungen können dauerhaft in den Voreinstellungen gespeichert werden (Standard), nur in der aktuellen Sitzung (mit -SessionOnly) oder aus der Sitzung entfernt werden (mit -ClearSession).

## Syntax

```powershell
Set-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Verzeichnispfad für Gesichtsbilddateien |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"
```

Legt das Gesichterverzeichnis dauerhaft in den Einstellungen fest.

### Set-AIKnownFacesRootpath "C:\FacePictures"

```powershell
Set-AIKnownFacesRootpath "C:\FacePictures"
```

Legt das Gesichterverzeichnis dauerhaft in den Einstellungen fest.

### Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly
```

Legt das Gesichter-Verzeichnis nur für die aktuelle Sitzung fest (Globale Variable).

### Set-AIKnownFacesRootpath -ClearSession

```powershell
Set-AIKnownFacesRootpath -ClearSession
```

Löscht die Einstellung für das Sitzungsgesichterverzeichnis (globale Variable), ohne dauerhafte Einstellungen zu beeinflussen.

## Related Links

- [Set-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
