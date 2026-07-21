# Get-SQLServerTransaction

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `getsqltx`, `newsqltx`

## Synopsis

> Creates and returns a SQL Server transaction object for batch operations.

## Description

Creates a SQL Server database connection and transaction object that can be used
for batch operations. The caller is responsible for committing or rolling back
the transaction. Requires an existing SQL Server database and connection.

## Syntax

```powershell
Get-SQLServerTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTransaction -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTransaction [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQL Server database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | The SQL Server instance name. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Transaction isolation level. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQL Server package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQL Server package. |

## Examples

### $transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" try {     Invoke-SQLServerQuery -Transaction $transaction -Queries "INSERT INTO Users..."     Invoke-SQLServerQuery -Transaction $transaction -Queries "UPDATE Users..."     $transaction.Commit() } catch {     $transaction.Rollback()     throw } finally {     $transaction.Connection.Close() }

```powershell
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase"
try {
    Invoke-SQLServerQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLServerQuery -Transaction $transaction -Queries "UPDATE Users..."
    $transaction.Commit()
} catch {
    $transaction.Rollback()
    throw
} finally {
    $transaction.Connection.Close()
}
```

### $transaction = Get-SQLServerTransaction -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true"

```powershell
$transaction = Get-SQLServerTransaction -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true"
```

### $transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" -ConsentToThirdPartySoftwareInstallation

```powershell
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-ConnectionString <String>`

> The connection string to the SQL Server database.

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
### `-DatabaseName <String>`

> The name of the SQL Server database.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-Server <String>`

> The SQL Server instance name.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'.'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

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
### `-ForceConsent`

> Force a consent prompt even if preference is set for SQL Server package installation.

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

> Automatically consent to third-party software installation and set persistent flag for SQL Server package.

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

- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerSchema.md)
- [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTableColumnData.md)
- [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTableData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTableSchema.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SSMS.md)
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-SQLServerDatabase.md)
