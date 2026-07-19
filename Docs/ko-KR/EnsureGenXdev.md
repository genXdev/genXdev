# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 모든 GenXdev 모듈이 올바르게 로드되도록 모든 Ensure* cmdlet을 호출합니다.

## Description

이 함수는 "Ensure" 또는 "Optimize-Ensure"(C# cmdlet의 경우)로 시작하는 모든 GenXdev cmdlet을 검색하고 각각을 실행하여 필요한 모든 GenXdev 모듈과 종속성이 제대로 로드되어 사용 가능한지 확인합니다. 실행 중 발생하는 오류는 catch되어 정보 메시지로 표시됩니다.

선택적으로 packages.json 매니페스트 파일에 정의된 모든 NuGet 패키지를 다운로드하고 로드할 수도 있습니다.

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

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

이 명령은 사용 가능한 모든 Ensure* cmdlet을 실행하여 GenXdev 환경을 초기화합니다.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

이 명령은 모든 Ensure* cmdlet을 실행하고 packages.json 매니페스트 파일에 정의된 모든 NuGet 패키지를 다운로드하여 로드합니다.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

이 명령은 모든 Ensure* cmdlet을 실행하고 NuGet 패키지를 다운로드합니다.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
