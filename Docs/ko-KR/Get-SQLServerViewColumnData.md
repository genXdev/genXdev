# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL 뷰에서 레코드 제한 옵션과 함께 컬럼 데이터를 검색합니다.

## Description

지정된 SQL 뷰에 대해 SELECT 쿼리를 실행하여 단일 열에서 데이터를 검색합니다. 연결 문자열 또는 데이터베이스 파일 경로를 통해 연결을 지원합니다. 반환되는 레코드 수를 제한하거나 모든 레코드를 검색할 수 있습니다.

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름입니다. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 인스턴스 이름입니다. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | 뷰의 이름. |
| `-ColumnName` | String | ✅ | — | 3 | — | 열의 이름. |
| `-Count` | Int32 | — | — | 4 | `100` | 반환할 레코드 수입니다. 기본값은 100입니다. -1을 입력하면 전체를 반환합니다. |

## Examples

### Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLServerViewColumnData on GitHub](https://github.com/genXdev/genXdev)
