# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает данные из таблицы SQL базы данных с возможностью ограничения количества записей.

## Description

Эта функция запрашивает данные из таблицы базы данных SQL, используя либо строку подключения, либо путь к файлу базы данных. Она обеспечивает гибкость при подключении к базе данных и контроле объема извлекаемых данных через параметр Count.

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Имя базы данных SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Имя экземпляра SQL Server. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Имя таблицы, из которой следует запрашивать данные. |
| `-Count` | Int32 | — | — | 3 | `100` | Максимальное количество записей для возврата. -1 для всех. |

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
