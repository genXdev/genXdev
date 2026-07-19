# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass die .NET-Assembly und die Browser-Binärdateien von Playwright verfügbar sind.

## Description

Interner Helfer, der das Microsoft.Playwright NuGet-Paket herunterlädt und lädt und dann die eigentlichen Browser-Binärdateien (Chromium, Firefox, WebKit) über die integrierte CLI von Playwright installiert. Idempotent — überspringt bereits abgeschlossene Schritte.

Wird von Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser und explizit von EnsureGenXdev während der Umgebungseinrichtung aufgerufen.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Stimme automatisch der Installation des Playwright-Browsers zu und setze dauerhaften Flag. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und dauerhaftes Flag für alle Pakete setzen. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
