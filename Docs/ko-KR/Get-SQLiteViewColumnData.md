# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로입니다. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | 뷰의 이름. |
| `-ColumnName` | String | ✅ | — | 2 | — | 열의 이름. |
| `-Count` | Int32 | — | — | 3 | `100` | 반환할 레코드 수입니다. 기본값은 100입니다. -1을 입력하면 전체를 반환합니다. |

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
