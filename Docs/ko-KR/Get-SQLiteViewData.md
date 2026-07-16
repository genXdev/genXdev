# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로입니다. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | 질의할 뷰의 이름입니다. |
| `-Count` | Int32 | — | — | 2 | `100` | 반환할 레코드 수입니다. 모든 레코드는 -1입니다. |

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
