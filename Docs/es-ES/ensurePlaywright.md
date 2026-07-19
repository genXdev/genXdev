# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Asegura que el ensamblado de Playwright .NET y los binarios del navegador estén disponibles.

## Description

Ayudante interno que descarga y carga el ensamblado NuGet de Microsoft.Playwright y luego instala los binarios del navegador reales (Chromium, Firefox, WebKit) mediante la CLI integrada de Playwright. Idempotente: omite los pasos que ya están completados.

Es llamado por Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser y explícitamente desde EnsureGenXdev durante la configuración del entorno.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación del navegador Playwright y establecer la marca persistente. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación de software de terceros y establecer el indicador persistente para todos los paquetes. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
