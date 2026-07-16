# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. |
| `-DatabaseFilePath` | String | — | — | 1 | — | SQLite 데이터베이스 파일의 경로입니다. |
| `-Transaction` | Object | — | — | 2 | — | 쿼리에 사용할 기존 SQLite 트랜잭션입니다. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | 실행할 쿼리입니다. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | 쿼리 파라미터를 해시 테이블로. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 사용할 격리 수준입니다. 기본값은 ReadCommitted입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQLite 패키지 설치를 위한 기본 설정이 지정된 경우에도 동의 프롬프트를 강제합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQLite package. |

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
