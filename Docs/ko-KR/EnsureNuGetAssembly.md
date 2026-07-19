# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 패키지 키나 ID를 기반으로 NuGet 패키지에서 .NET 어셈블리를 다운로드하고 로드합니다.

## Description

이 함수는 지정된 NuGet 패키지 어셈블리를 다운로드하여 현재 PowerShell 세션에 로드합니다. 자동 감지 및 로드를 지원하며, JSON 매니페스트를 사용한 구성 재정의를 대체 수단으로 제공하고, 스텁 종속성(예: SQLite)과 같은 예외 상황을 처리합니다. 설치 시 안정적인 패키지 관리를 위해 dotnet CLI만을 사용하며, 전역 NuGet 캐시에서 어셈블리를 복사하지 않고 직접 로드합니다. 지연 로딩을 통해 진행 전에 형식이 이미 사용 가능한지 확인합니다.

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

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
