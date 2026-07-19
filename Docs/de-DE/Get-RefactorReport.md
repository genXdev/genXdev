# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> Generiert einen detaillierten Bericht über Refactoring-Operationen und deren Status.

## Description

Analysiert und berichtet über den Fortschritt von Refactoring-Operationen, indem deren aktueller Zustand, Fertigstellungsstatus und betroffene Funktionen untersucht werden. Liefert die Ausgabe entweder im strukturierten Hashtabellenformat oder in menschenlesbaren, ausgerichteten Textspalten. Der Bericht umfasst den Refactornamen, den Prompt-Schlüssel, die Priorität, den Status, die Anzahl der Funktionen und den Fertigstellungsprozentsatz.

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name des Refactorings, akzeptiert Platzhalter 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Gibt den Pfad zur Datenbankdatei der Einstellungen an. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Wenn gesetzt, nur den Sitzungscache für Refactordaten verwenden. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wenn gesetzt, den Sitzungs-Cache vor der Ausführung leeren. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Falls gesetzt, wird das Laden des Sitzungscaches übersprungen. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Bericht jetzt im Textformat statt Hashtable ausgeben |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Generiert einen Textbericht für Refactorings, die "DatabaseRefactor" entsprechen.

### Example 2

```powershell
refactorreport "*"
```

Erstellt Hashtable-Bericht für alle Refactorings mit Alias.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
