# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 실행할 쿼리입니다. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | SQL Server 데이터베이스의 이름입니다. |
| `-Server` | String | — | — | 2 | `'.'` | SQL Server 인스턴스 이름입니다. |
| `-Transaction` | Object | — | — | 3 | — | 쿼리에 사용할 기존 SQL Server 트랜잭션입니다. |
| `-ConnectionString` | String | — | — | 4 | — | SQL 데이터베이스에 대한 연결 문자열입니다. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | 쿼리 파라미터를 해시 테이블로. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 사용할 격리 수준입니다. 기본값은 ReadCommitted입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL Server 패키지 설치에 대해 기본 설정이 지정되어 있어도 동의 프롬프트를 강제로 표시합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 자동으로 타사 소프트웨어 설치에 동의하고 SQL Server 패키지에 대한 영구 플래그를 설정합니다. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
