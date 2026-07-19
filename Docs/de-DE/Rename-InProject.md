# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> Führt Textersetzung in einem gesamten Projektverzeichnis durch.

## Description

Durchsucht rekursiv Dateien und Verzeichnisse in einem Projekt, um Textersetzungen durchzuführen. Verarbeitet sowohl Datei-/Verzeichnisnamen als auch Dateiinhalte. Überspringt gängige Binärdateien und Repository-Ordner (.git, .svn), um Beschädigungen zu vermeiden. Verwendet UTF-8-Kodierung ohne BOM für Dateioperationen. Unterstützt sowohl groß-/kleinschreibungsempfindliche als auch -unempfindliche Ersetzungsmodi.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | Der Ordner, der Dateipfad oder der Ordner+Suchmaske |
| `-FindText` | String | ✅ | — | 1 | — | Der zu suchende Text (Groß-/Kleinschreibung wird durch den Parameter CaseInsensitive gesteuert) |
| `-ReplacementText` | String | ✅ | — | 2 | — | Der Text, der mit den Treffern ersetzt werden soll |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
