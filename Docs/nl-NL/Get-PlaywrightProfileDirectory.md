# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt de Playwright-browserprofielmap op voor persistente sessies.

## Description

* Creëert en beheert browserprofielmappen voor geautomatiseerd testen met Playwright.
* Profielen worden opgeslagen in LocalAppData onder
  GenXdev.Powershell\Playwright.profiles.
* Deze profielen maken persistente sessies mogelijk tijdens meerdere browserautomatiseringsruns.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | The browser type (Chromium, Firefox, or Webkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Maakt het pad voor het Chromium-browserprofiel aan of retourneert het.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

Maakt of retourneert de Firefox-profielmap aan de hand van een positionele parameter.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)
