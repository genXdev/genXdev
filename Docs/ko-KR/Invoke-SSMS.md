# Invoke-SSMS

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `ssms`, `sqlservermanagementstudio`

## Synopsis

> 매개변수 및 트랜잭션을 지원하는 SQL Server 데이터베이스 쿼리를 실행합니다.

## Description

SQL Server 쿼리를 실행하기 위한 PowerShell 인터페이스를 제공하며, 다음을 지원합니다.
- 연결 문자열 또는 서버 이름이 포함된 데이터베이스 이름을 통한 연결
- SQL 삽입 공격을 방지하는 매개 변수화된 쿼리
- 트랜잭션 격리 수준 제어
- 단일 트랜잭션에서 여러 쿼리 실행
- 쿼리 및 매개 변수에 대한 파이프라인 입력

## Syntax

```powershell
Invoke-SSMS [<CommonParameters>]
```

## Examples

### Invoke-SSMS `     -DatabaseName "users" -Server "localhost" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SSMS `
    -DatabaseName "users" -Server "localhost" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | Invoke-SSMS -DatabaseName "users"

```powershell
"SELECT * FROM Users" | Invoke-SSMS -DatabaseName "users"
```

## Related Links

- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerSchema.md)
- [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTableColumnData.md)
- [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTableData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTableSchema.md)
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-SQLServerQuery.md)
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-SQLServerDatabase.md)
