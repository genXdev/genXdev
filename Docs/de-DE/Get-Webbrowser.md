# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gibt eine Sammlung installierter moderner Webbrowser zurück.

## Description

* Erkennt und gibt Details über moderne Webbrowser aus, die auf dem System installiert sind.
* Ruft Informationen wie Name, Beschreibung, Symbolpfad, Ausführungspfad und Status als Standardbrowser durch Abfragen der Windows-Registrierung ab.
* Gibt nur Browser zurück, die über die erforderlichen, in Windows registrierten Fähigkeiten verfügen.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Wählt Microsoft Edge-Browserinstanzen aus *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Wählt Google Chrome Browser-Instanzen aus *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | Wählt den standardmäßigen Chromium-basierten Browser aus *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Wählt Firefox-Browserinstanzen aus *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

Gibt eine Sammlung aller installierten modernen Webbrowser zurück.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

Filter, um nur den systemeigenen Standardbrowser anzuzeigen.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
