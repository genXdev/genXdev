# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> Создает и возвращает объект транзакции SQLite для пакетных операций.

## Description

Создает объект соединения и транзакции базы данных SQLite, который можно использовать для пакетных операций. Вызывающий отвечает за фиксацию или откат транзакции. Соединение будет автоматически создано, если файл базы данных не существует.

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Уровень изоляции транзакций. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Создавать ли файл базы данных, если он не существует. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQLite package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически согласиться на установку стороннего программного обеспечения и установить постоянный флаг для пакета SQLite. |

## Examples

### $transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" try {     Invoke-SQLiteQuery -Transaction $transaction -Queries "INSERT INTO Users..."     Invoke-SQLiteQuery -Transaction $transaction -Queries "UPDATE Users..."     $transaction.Commit() } catch {     $transaction.Rollback()     throw } finally {     $transaction.Connection.Close() }

```powershell
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLiteQuery -Transaction $transaction -Queries "UPDATE Users..."
    $transaction.Commit()
} catch {
    $transaction.Rollback()
    throw
} finally {
    $transaction.Connection.Close()
}
```

### $transaction = Get-SQLiteTransaction -ConnectionString "Data Source=C:\data.db"

```powershell
$transaction = Get-SQLiteTransaction -ConnectionString "Data Source=C:\data.db"
```

### $transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" -ConsentToThirdPartySoftwareInstallation

```powershell
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Get-SQLiteTransaction on GitHub](https://github.com/genXdev/genXdev)
