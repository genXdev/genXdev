# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL 데이터베이스 테이블의 특정 열에서 데이터를 검색합니다.

## Description

이 함수는 SQL 데이터베이스 테이블의 단일 열에서 데이터를 추출하는 편리한 방법을 제공합니다. 두 가지 연결 방법을 지원합니다: 직접 데이터베이스 파일 경로 또는 연결 문자열입니다. 이 함수에는 반환되는 레코드 수를 제한하는 옵션이 포함되어 있으며, 최적의 성능을 위해 적절한 SQL 쿼리 구성을 사용합니다.

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

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
