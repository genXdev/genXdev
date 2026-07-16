# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
