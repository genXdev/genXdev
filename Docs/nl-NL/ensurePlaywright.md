# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat de Playwright .NET assembly en browser binair beschikbaar zijn.

## Description

Interne helper die de Microsoft.Playwright NuGet-assembly downloadt en laadt en vervolgens de daadwerkelijke browser-binaire bestanden (Chromium, Firefox, WebKit) installeert via de ingebouwde CLI van Playwright. Idempotent — slaat stappen over die al zijn voltooid.

Aangeroepen door Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser en expliciet vanuit EnsureGenXdev tijdens de omgevingsinstelling.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor de installatie van Playwright-browser en persistente vlag instellen. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en permanente vlag instellen voor alle pakketten. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
