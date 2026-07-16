# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로입니다. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | 데이터를 조회할 테이블의 이름입니다. |
| `-Count` | Int32 | — | — | 2 | `100` | 반환할 최대 레코드 수입니다. 모든 레코드를 반환하려면 -1을 입력합니다. |

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
