# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que o assembly Playwright .NET e os binários do navegador estejam disponíveis.

## Description

Auxiliar interno que baixa e carrega o assembly Microsoft.Playwright NuGet e, em seguida, instala os binários reais do navegador (Chromium, Firefox, WebKit) via CLI integrada do Playwright. Idempotente — pula etapas que já foram concluídas.

Chamado por Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser e explicitamente por EnsureGenXdev durante a configuração do ambiente.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação do navegador Playwright e definir sinalizador persistente. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para todos os pacotes. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
