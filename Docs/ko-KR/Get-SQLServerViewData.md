# Get-SQLServerViewData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 선택적 레코드 제한 기능을 사용하여 SQL 데이터베이스 뷰에서 데이터를 검색합니다.

## Description

연결 문자열 또는 데이터베이스 파일 경로를 사용하여 SQL 데이터베이스 뷰를 쿼리합니다. 이 함수는 반환되는 레코드 수를 제한할 수 있으며 쿼리 실행 추적을 위한 상세 출력을 제공합니다.

## Syntax

```powershell
Get-SQLServerViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름입니다. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 인스턴스 이름입니다. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | 질의할 뷰의 이름입니다. |
| `-Count` | Int32 | — | — | 3 | `100` | 반환할 레코드 수입니다. 모든 레코드는 -1입니다. |

## Examples

### Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLServerViewData on GitHub](https://github.com/genXdev/genXdev)
