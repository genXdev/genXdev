# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Garantit que l'assembly Playwright .NET et les binaires du navigateur sont disponibles.

## Description

Assistant interne qui télécharge et charge l'assembly NuGet Microsoft.Playwright, puis installe les binaires réels du navigateur (Chromium, Firefox, WebKit) via l'interface CLI intégrée de Playwright. Idempotent — ignore les étapes déjà terminées.

Appelé par Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser, et explicitement depuis EnsureGenXdev lors de la configuration de l'environnement.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation du navigateur Playwright et définir le drapeau persistant. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir un indicateur persistant pour tous les packages. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
