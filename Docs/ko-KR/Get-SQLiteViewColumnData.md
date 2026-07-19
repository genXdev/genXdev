# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> SQLite 뷰에서 선택적 레코드 제한으로 열 데이터를 검색합니다.

## Description

지정된 SQLite 뷰에 대해 SELECT 쿼리를 실행하여 단일 열에서 데이터를 검색합니다. 연결 문자열 또는 데이터베이스 파일 경로를 통해 연결을 지원합니다. 반환된 레코드 수를 제한하거나 모든 레코드를 검색할 수 있습니다.

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

## Examples

### Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
