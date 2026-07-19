# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures the Playwright .NET assembly and browser binaries are available.

## Description

Internal helper that downloads and loads the Microsoft.Playwright NuGet
assembly and then installs the actual browser binaries (Chromium, Firefox,
WebKit) via Playwright's built-in CLI. Idempotent — skips steps that are
already completed.

Called by Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser,
and explicitly from EnsureGenXdev during environment setup.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Automatically consent to Playwright browser installation and set persistent flag. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for all packages. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
