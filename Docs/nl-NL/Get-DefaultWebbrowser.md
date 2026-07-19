# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retourneert de geconfigureerde standaardwebbrowser voor de huidige gebruiker.

## Description

* Haalt informatie op over de standaardwebbrowser van het systeem door de
  Windows-registry te bevragen.
* Retourneert een hashtable met de naam, beschrijving, pictogrampad
  en uitvoerbaar pad van de browser.
* De functie controleert zowel gebruikersvoorkeuren als systeembrede
  browserregistraties om de standaardbrowser te bepalen.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

Gedetailleerde informatie over de standaardbrowser verkrijgen.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

Open de standaardbrowser met een specifieke URL.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
