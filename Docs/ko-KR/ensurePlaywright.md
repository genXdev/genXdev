# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Playwright .NET 어셈블리와 브라우저 바이너리를 사용할 수 있도록 보장합니다.

## Description

Microsoft.Playwright NuGet 어셈블리를 다운로드하고 로드한 다음 Playwright의 내장 CLI를 통해 실제 브라우저 바이너리(Chromium, Firefox, WebKit)를 설치하는 내부 도우미입니다. 멱등성 — 이미 완료된 단계는 건너뜁니다.

Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser 및 EnsureGenXdev가 환경 설정 중에 명시적으로 호출합니다.

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Playwright 브라우저 설치에 자동으로 동의하고 영구 플래그를 설정합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 모든 패키지에 대해 타사 소프트웨어 설치를 자동으로 동의하고 지속적 플래그를 설정합니다. |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
