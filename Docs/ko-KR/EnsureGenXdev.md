# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 완료된 것으로 보이는 경우에도 ensure 작업의 실행을 강제합니다 |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | packages.json 매니페스트 파일에 정의된 모든 NuGet 패키지를 다운로드하고 로드합니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 타사 소프트웨어 설치에 대한 기본 설정이 지정되어 있어도 동의 프롬프트를 강제로 표시합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 모든 패키지에 대해 타사 소프트웨어 설치를 자동으로 동의하고 지속적 플래그를 설정합니다. |

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
