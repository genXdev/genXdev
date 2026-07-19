# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Выполняет один или несколько SQL-запросов к базе данных SQLite с поддержкой транзакций.

## Description

Выполняет SQL-запросы к базе данных SQLite с поддержкой параметров и настраиваемой изоляцией транзакций. Может использовать внешнюю транзакцию для пакетных операций или создавать собственную внутреннюю транзакцию. При использовании внешней транзакции вызывающий код отвечает за фиксацию/откат. Приоритет подключения: Транзакция > ConnectionString > DatabaseFilePath.

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | Строка подключения к базе данных SQLite. |
| `-DatabaseFilePath` | String | — | — | 1 | — | Путь к файлу базы данных SQLite. |
| `-Transaction` | Object | — | — | 2 | — | Существующая транзакция SQLite для выполнения запросов. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | Запрос или запросы для выполнения. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | Параметры запроса в виде хэш-таблиц. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Используемый уровень изоляции. По умолчанию — ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQLite package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически согласиться на установку стороннего программного обеспечения и установить постоянный флаг для пакета SQLite. |

## Examples

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}

```powershell
"SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" try {     Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
