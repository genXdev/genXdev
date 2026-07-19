# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> Ruft Dateien aus der Windows-Zwischenablage ab, die für Dateioperationen wie Kopieren/Einfügen festgelegt wurden.

## Description

* Diese Funktion ruft Dateipfade aus der Windows-Zwischenablage ab, die zuvor für Dateioperationen festgelegt wurden.
* Sie verarbeitet automatisch sowohl STA- als auch MTA-Threading-Modi und gewährleistet Kompatibilität über verschiedene PowerShell-Ausführungskontexte hinweg.
* Die Funktion überprüft die Existenz von Dateien und gibt nur vorhandene Dateien/Verzeichnisse als Objekte ähnlich der Get-ChildItem- oder Get-Item-Ausgabe zurück.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

Alle Dateien, die sich derzeit in der Zwischenablage befinden, als Dateisystemobjekte abrufen.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

Zwischenablagedateien abrufen und deren vollständige Pfade anzeigen.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

Holen Sie sich nur Textdateien aus der Zwischenablage.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
