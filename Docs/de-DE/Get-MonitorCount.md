# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ermittelt die Gesamtzahl der an das System angeschlossenen Bildschirme.

## Description

* Verwendet die Windows Presentation Foundation (WPF) Screen-Hilfsklasse, um
  die genaue Anzahl der physischen Anzeigemonitore zu ermitteln, die derzeit
  mit dem System verbunden sind.
* Dies umfasst sowohl aktive als auch erkannte, aber deaktivierte Monitore.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Gibt die Gesamtzahl der angeschlossenen Monitore zurück (z. B. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Gibt die Anzahl der Monitore mit ausführlicher Ausgabe des Erkennungsprozesses zurück.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
