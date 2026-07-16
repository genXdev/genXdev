# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | packages.json의 패키지 키 또는 직접 NuGet 패키지 ID. |
| `-ManifestPath` | String | — | — | Named | — | packages.json의 경로; 생략 시 모듈 루트를 기본값으로 사용합니다. |
| `-Version` | String | — | — | Named | — | 특정 버전; 생략 시 JSON 또는 최신 버전에서 가장 높은 버전 사용 |
| `-TypeName` | String | — | — | Named | — | 이름을 입력하여 로딩을 확인하세요. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | 정확한 버전이 실패할 경우 최신 버전으로 대체합니다. |
| `-Destination` | String | — | — | Named | — | 사용자 정의 설치 대상; 기본값은 로컬 영구 저장소 또는 전역 캐시입니다. |
| `-Description` | String | — | — | Named | — | 동의를 위한 소프트웨어 및 그 목적에 대한 선택적 설명. |
| `-Publisher` | String | — | — | Named | — | 동의를 위한 소프트웨어의 선택적 게시자 또는 공급업체입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 동의가 설정된 경우에도 프롬프트를 강제로 실행합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 자동으로 타사 소프트웨어 설치에 동의하고 영구 플래그를 설정합니다. |

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
