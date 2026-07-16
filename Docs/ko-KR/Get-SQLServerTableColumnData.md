# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 인스턴스 이름 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | 조회할 테이블의 이름 |
| `-ColumnName` | String | ✅ | — | 3 | — | 검색할 열의 이름 |
| `-Count` | Int32 | — | — | 4 | `100` | 반환할 레코드 수입니다. 기본값은 100입니다. 전체를 원하면 -1을 사용하세요. |

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
