# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerViews -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViews -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름입니다. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 인스턴스 이름입니다. *(Parameter set: )* |

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
