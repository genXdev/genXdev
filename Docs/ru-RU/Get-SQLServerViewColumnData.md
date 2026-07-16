# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Имя базы данных SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Имя экземпляра SQL Server. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | Имя представления. |
| `-ColumnName` | String | ✅ | — | 3 | — | Название столбца. |
| `-Count` | Int32 | — | — | 4 | `100` | Количество записей для возврата. По умолчанию 100. -1 для всех. |

## Related Links

- [Get-SQLServerViewColumnData on GitHub](https://github.com/genXdev/genXdev)
