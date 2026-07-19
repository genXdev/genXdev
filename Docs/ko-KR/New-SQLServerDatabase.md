# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> 새 SQL Server 데이터베이스를 생성합니다.

## Description

지정된 서버에 지정된 이름의 새 SQL Server 데이터베이스를 생성합니다. 대상 SQL Server 인스턴스에 데이터베이스를 생성할 수 있는 적절한 권한이 필요합니다. 데이터베이스가 이미 존재하는 경우 작업이 건너뜁니다. 명시적인 .mdf/.ldf 경로를 사용한 파일 기반 데이터베이스 생성을 지원합니다.

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | 생성할 SQL Server 데이터베이스의 이름 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 인스턴스 이름 *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server에 연결하기 위한 연결 문자열 *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL Server 패키지 설치에 대해 기본 설정이 지정되어 있어도 동의 프롬프트를 강제로 표시합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 자동으로 타사 소프트웨어 설치에 동의하고 SQL Server 패키지에 대한 영구 플래그를 설정합니다. |
| `-DataFilePath` | String | — | — | Named | — | 파일 기반 데이터베이스 생성을 위한 선택적 데이터 파일 경로(.mdf) *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | 파일 기반 데이터베이스 생성을 위한 선택적 로그 파일 경로(.ldf). *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | 생성 후 데이터베이스 분리 (파일 기반 데이터베이스의 경우). *(Parameter set: )* |

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)
