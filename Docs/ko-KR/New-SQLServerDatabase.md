# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)
