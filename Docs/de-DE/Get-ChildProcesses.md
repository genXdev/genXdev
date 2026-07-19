# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft alle Prozesse ab, die Nachfolger des aktuellen PowerShell-Prozesses sind.

## Description

* Untersucht alle laufenden Prozesse und identifiziert diejenigen, die den aktuellen
  PowerShell-Prozess als Vorfahren in ihrer übergeordneten Prozesskette haben.
* Dies umfasst sowohl direkte untergeordnete Prozesse als auch deren Nachkommen
  (Enkel usw.).

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Rufen Sie alle untergeordneten Prozesse der aktuellen PowerShell-Sitzung ab.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

Unterprozesse mit ausführlicher Ausgabe abrufen, die detaillierte Prozesserfassungsinformationen anzeigt.

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
