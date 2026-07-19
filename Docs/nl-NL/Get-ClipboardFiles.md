# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> Haalt bestanden op uit het Windows-klembord die waren ingesteld voor bestandsbewerkingen zoals kopiëren/plakken.

## Description

* Deze functie haalt bestandspaden op uit het Windows-klembord die eerder
  zijn ingesteld voor bestandsbewerkingen.
* Het verwerkt automatisch zowel STA- als MTA-threadmodi, waardoor
  compatibiliteit wordt gegarandeerd in verschillende PowerShell-uitvoeringscontexten.
* De functie valideert het bestaan van bestanden en retourneert alleen bestaande
  bestanden/mappen als objecten vergelijkbaar met de uitvoer van Get-ChildItem of Get-Item.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

Get alle bestanden dat momenteel in het klembord zitten als bestandssysteemobjecten.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

Klembordbestanden ophalen en hun volledige paden weergeven.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

Haal alleen tekstbestanden van het klembord.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
