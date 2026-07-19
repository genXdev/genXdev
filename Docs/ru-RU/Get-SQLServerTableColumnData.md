# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает данные из определенного столбца таблицы базы данных SQL.

## Description

Эта функция предоставляет удобный способ извлечения данных из одного столбца таблицы базы данных SQL. Она поддерживает два способа подключения: прямой путь к файлу базы данных или строку подключения. Функция включает опции для ограничения количества возвращаемых записей и использует правильное построение SQL-запросов для оптимальной производительности.

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Название базы данных SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Имя экземпляра SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Название таблицы для запроса |
| `-ColumnName` | String | ✅ | — | 3 | — | Название столбца для получения |
| `-Count` | Int32 | — | — | 4 | `100` | Количество записей для возврата. По умолчанию 100. Используйте -1 для всех |

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
