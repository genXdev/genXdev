# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Обеспечивает наличие сборки Playwright .NET и двоичных файлов браузера.

## Description

Внутренний помощник, который загружает сборку Microsoft.Playwright NuGet и устанавливает фактические двоичные файлы браузера (Chromium, Firefox, WebKit) через встроенный CLI Playwright. Идемпотентен — пропускает шаги, которые уже выполнены.

Вызывается из Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser и явно из EnsureGenXdev во время настройки среды.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Автоматически дать согласие на установку браузера Playwright и установить постоянный флаг. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего программного обеспечения и устанавливать постоянный флаг для всех пакетов. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
