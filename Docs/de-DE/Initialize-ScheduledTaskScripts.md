# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Erstellt geplante Aufgaben, die PowerShell-Skripte in festgelegten Intervallen ausführen.

## Description

Erstellt und konfiguriert geplante Aufgaben, die PowerShell-Skripte in verschiedenen Intervallen ausführen, einschließlich:
- Systemstart
- Benutzeranmeldung
- Jede Stunde an bestimmten Tagen (z. B. Montag um 13:00 Uhr)
- Täglich zu bestimmten Uhrzeiten (z. B. jeden Tag um 15:00 Uhr)
Jede Aufgabe wird mit erweiterten Rechten im Kontext des aktuellen Benutzers ausgeführt.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | Der Verzeichnispfad, in dem Aufgaben-Skripte erstellt werden |
| `-Prefix` | String | — | — | 1 | `'PS'` | Präfix für die geplanten Tasknamen |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)
