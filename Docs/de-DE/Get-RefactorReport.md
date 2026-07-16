# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> *(No synopsis provided)*

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

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
