# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Legt die Standardsprache und optional die Bildverzeichnisse für GenXdev.AI Bildmetadatenoperationen fest.

## Description

Diese Funktion konfiguriert die globale Standardsprache für Bildmetadaten-Operationen im GenXdev.AI-Modul. Optional kann sie auch die globalen Bildverzeichnisse festlegen. Beide Einstellungen werden im Präferenzspeicher des Moduls für die Verwendung über Sitzungen hinweg gespeichert.

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Die Standardsprache für Bildmetadaten-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

Legt die Sprach- und Bildverzeichnisse dauerhaft in den Einstellungen fest.

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

Legt die Sprache dauerhaft in den Einstellungen fest.

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

Setzt die Sprache nur für die aktuelle Sitzung (globale Variable).

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

Löscht die Sitzungsspracheinstellung (globale Variable), ohne dauerhafte Einstellungen zu beeinflussen.

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
