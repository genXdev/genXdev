# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL Server 데이터베이스에서 뷰 목록을 검색합니다.

## Description

지정된 SQL Server 데이터베이스에서 모든 뷰 이름을 가져옵니다. 추가 데이터베이스 작업에 사용할 수 있는 뷰 이름 배열을 반환합니다. 이 함수는 유연성을 위해 두 가지 매개변수 집합을 지원합니다: 연결 문자열을 제공하거나 데이터베이스 이름과 서버를 제공하는 것입니다.

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

## Examples

### Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"

```powershell
Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"
```

### Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"

```powershell
Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"
```

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
