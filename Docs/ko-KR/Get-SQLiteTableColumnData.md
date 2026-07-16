# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스에 대한 연결 문자열 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | 조회할 테이블의 이름 |
| `-ColumnName` | String | ✅ | — | 2 | — | 검색할 열의 이름 |
| `-Count` | Int32 | — | — | 3 | `100` | 반환할 레코드 수입니다. 기본값은 100입니다. 전체를 원하면 -1을 사용하세요. |

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
