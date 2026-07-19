# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает данные из представления базы данных SQLite с возможностью ограничения записей.

## Description

Запрашивает представление базы данных SQLite, используя строку подключения или путь к файлу базы данных. Функция поддерживает ограничение количества возвращаемых записей и предоставляет подробный вывод для отслеживания выполнения запроса.

## Syntax

```powershell
Get-SQLiteViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Имя представления для запроса. |
| `-Count` | Int32 | — | — | 2 | `100` | Количество возвращаемых записей. -1 для всех записей. |

## Examples

### Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
