# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generiert umfangreiche Markdown-Hilfedateien für jedes PowerShell-Modul.

## Description

Generiert eine umfassende Markdown-Hilfeseite für jedes PowerShell-Modul:
eine .md-Datei pro Cmdlet mit allen Metadatenabschnitten, plus eine README.md
Index mit Tabellen pro Untermodul, die zu jeder Cmdlet-Datei verlinken.

Die Erkennung von Untermodulen ist portabel: .psm1-Dot-Source-Verzeichnisse für
Skript-Cmdlets, .NET-Namespaces für kompilierte Cmdlets, mit einer abgestuften
Fallback-Kette für Module ohne Untermodul-Struktur.

## Syntax

```powershell
New-GenXdevMarkdownHelp -ModuleName <String> [-Force] [-Language <String>] [-LinkPrefix <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Der Name des PowerShell-Moduls, für das Hilfe generiert werden soll |
| `-OutputPath` | String | — | — | Named | — | Benutzerdefiniertes Ausgabeverzeichnis für .md-Dateien. Standardmäßig <moduleRoot>\Docs\<Sprache>. |
| `-Language` | String | — | — | Named | `'en-US'` | de-DE |
| `-Force` | SwitchParameter | — | — | Named | — | Vorhandene .md-Dateien ohne Nachfrage überschreiben |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | URL-Präfix für README-Indexlinks (z. B. https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Brauchst du Hilfe? |

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Generiert den Ordner Docs\ mit einer .md-Datei pro Pester-Cmdlet und einer README.md-Indexdatei.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Generiert niederländisch übersetzte Markdown-Hilfe und überschreibt vorhandene Dateien.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Generiert Hilfe mit absoluten GitHub-Links im README-Index.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
