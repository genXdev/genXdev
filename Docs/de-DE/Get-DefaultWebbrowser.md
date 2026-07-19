# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gibt den konfigurierten Standard-Webbrowser für den aktuellen Benutzer zurück.

## Description

* Ruft Informationen über den systemweiten Standard-Webbrowser ab, indem die Windows-Registrierungsdatenbank abgefragt wird.
* Gibt eine Hashtabelle zurück, die den Namen, die Beschreibung, den Symbolladepfad und den ausführbaren Pfad des Browsers enthält.
* Die Funktion überprüft sowohl Benutzereinstellungen als auch systemweite Browserregistrierungen, um den Standardbrowser zu ermitteln.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

Rufen Sie detaillierte Informationen über den Standardbrowser ab.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

Öffnen Sie den Standardbrowser mit einer bestimmten URL.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
