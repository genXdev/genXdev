# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retourneert een verzameling geïnstalleerde moderne webbrowsers.

## Description

* Ontdekt en retourneert details over moderne webbrowsers die op het systeem zijn geïnstalleerd.
* Haalt informatie op zoals naam, beschrijving, pictogrampad, uitvoerbaar pad en standaardbrowserstatus door de Windows-register te doorzoeken.
* Retourneert alleen browsers die de vereiste mogelijkheden in Windows hebben geregistreerd.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Selecteert Microsoft Edge browserinstanties *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Selecteert Google Chrome browserinstanties *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | Selecteert de standaard chromium-gebaseerde browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Selecteert Firefox browserinstanties *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

Retourneert een verzameling van alle geïnstalleerde moderne webbrowsers.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

Filters om alleen de standaardbrowser van het systeem weer te geven.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
