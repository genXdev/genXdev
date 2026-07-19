# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> 创建并返回一个用于批量操作的SQLite事务对象。

## Description

创建SQLite数据库连接和事务对象，用于批量操作。调用者负责提交或回滚事务。如果数据库文件不存在，将自动创建连接。

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 事务隔离级别 |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | 当数据库文件不存在时，是否创建该文件。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置偏好，也要强制显示同意提示以安装SQLite包。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为 SQLite 包设置持久标志。 |

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
