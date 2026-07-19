# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL 데이터베이스 테이블에서 데이터를 검색하며 선택적으로 레코드 수를 제한합니다.

## Description

이 함수는 연결 문자열이나 데이터베이스 파일 경로를 사용하여 SQL 데이터베이스 테이블에서 데이터를 쿼리합니다. Count 매개변수를 통해 데이터베이스 연결 및 검색되는 데이터 양을 제어할 수 있는 유연성을 제공합니다.

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름입니다. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 인스턴스 이름입니다. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | 데이터를 조회할 테이블의 이름입니다. |
| `-Count` | Int32 | — | — | 3 | `100` | 반환할 최대 레코드 수입니다. 모든 레코드를 반환하려면 -1을 입력합니다. |

## Examples

### Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLServerTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLServerTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
