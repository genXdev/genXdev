# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> Startet einen Prozess mit einer angegebenen Prioritätsstufe.

## Description

* Startet eine ausführbare Datei mit einem anpassbaren Prioritätslevel und bietet Optionen für Wartezeit und Prozessverwaltung.
* Erweitert Start-Process um zusätzliche Funktionen zur Steuerung der Prozesspriorität und des Ausführungsverhaltens.

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Pfad zur auszuführenden Datei |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumente, die an die ausführbare Datei übergeben werden sollen |
| `-Priority` | String | — | — | 2 | — | Prozessprioritätsstufe |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Don't wait for process completion |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Return the process object |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Startet Notepad mit niedriger Priorität und kehrt sofort zurück.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Verwendet den Alias 'nice', um einen Prozess mit hoher Priorität zu starten.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
