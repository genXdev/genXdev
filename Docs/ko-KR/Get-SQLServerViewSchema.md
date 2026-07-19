# Get-SQLServerViewSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL Server 뷰에 대한 SQL 스키마 정의를 검색합니다.

## Description

이 함수는 SQL Server 데이터베이스의 시스템 테이블을 쿼리하여 지정된 뷰의 SQL 정의를 추출합니다. 연결 문자열 또는 서버 매개변수가 포함된 데이터베이스 이름을 통해 연결을 지원하며, 요청된 뷰를 정의하는 완전한 SQL 스키마를 반환합니다.

## Syntax

```powershell
Get-SQLServerViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름입니다. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 인스턴스 이름입니다. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | 뷰의 이름. |

## Examples

### Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `                     -ViewName "CustomerOrders"

```powershell
Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"
```

## Related Links

- [Get-SQLServerViewSchema on GitHub](https://github.com/genXdev/genXdev)
