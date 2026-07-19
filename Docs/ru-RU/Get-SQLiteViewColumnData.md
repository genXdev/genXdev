# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает данные колонки из представления SQLite с возможностью ограничения записей.

## Description

Выполняет запрос SELECT к указанному представлению SQLite для получения данных из одного столбца. Поддерживает подключение через строку подключения или путь к файлу базы данных. Позволяет ограничить количество возвращаемых записей или получить все записи.

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Имя представления. |
| `-ColumnName` | String | ✅ | — | 2 | — | Название столбца. |
| `-Count` | Int32 | — | — | 3 | `100` | Количество записей для возврата. По умолчанию 100. -1 для всех. |

## Examples

### Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
