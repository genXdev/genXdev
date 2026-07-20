# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx`, `newsqltx`

## Synopsis

> Creates and returns a SQLite transaction object for batch operations.

## Description

Creates a SQLite database connection and transaction object that can be used
for batch operations. The caller is responsible for committing or rolling back
the transaction. The connection will be automatically created if the database
file doesn't exist.

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQLite database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | The path to the SQLite database file. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Transaction isolation level. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Whether to create the database file if it does not exist. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQLite package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQLite package. |

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

## Parameter Details

### `-ConnectionString <String>`

> The connection string to the SQLite database.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ConnectionString |

<hr/>
### `-DatabaseFilePath <String>`

> The path to the SQLite database file.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dbpath`, `indexpath` |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseFilePath |

<hr/>
### `-IsolationLevel <String>`

> Transaction isolation level.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"ReadCommitted"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CreateDatabaseIfNotExists <Boolean>`

> Whether to create the database file if it does not exist.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$true` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Force a consent prompt even if preference is set for SQLite package installation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Automatically consent to third-party software installation and set persistent flag for SQLite package.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [EnsureSQLiteStudioInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSQLiteStudioInstalled.md)
- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteSchema.md)
- [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTableColumnData.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTables.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTableSchema.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SQLiteQuery.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SQLiteStudio.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-SQLiteDatabase.md)
