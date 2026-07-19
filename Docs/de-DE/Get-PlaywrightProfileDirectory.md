# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft das Playwright-Browserprofilverzeichnis für persistente Sitzungen ab.

## Description

* Erstellt und verwaltet Browserprofilverzeichnisse für die automatisierte Playwright-Testdurchführung.
* Profile werden in LocalAppData unter GenXdev.Powershell\Playwright.profiles gespeichert.
* Diese Profile ermöglichen persistente Sitzungen bei der Automatisierung von Browserabläufen.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Der Browsertyp (Chromium, Firefox oder Webkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Erstellt oder gibt den Pfad für das Chromium-Browserprofil zurück.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

Erstellt oder gibt das Firefox-Profilverzeichnis mithilfe des Positionsparameters zurück.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)
