# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb`

## Synopsis

> Creates a new SQL Server database.

## Description

Creates a new SQL Server database with the specified name on the specified
server. Requires appropriate permissions to create databases on the target SQL
Server instance. If the database already exists, the operation will be skipped.
Supports file-based database creation with explicit .mdf/.ldf paths.

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database to create *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | The SQL Server instance name *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to connect to SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQL Server package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQL Server package. |
| `-DataFilePath` | String | — | — | Named | — | Optional data file path (.mdf) for file-based database creation. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Optional log file path (.ldf) for file-based database creation. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Detach database after creation (for file-based databases). *(Parameter set: )* |

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-DatabaseName <String>`

> The name of the SQL Server database to create

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

> The SQL Server instance name

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
### `-ConnectionString <String>`

> The connection string to connect to SQL Server

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
### `-DataFilePath <String>`

> Optional data file path (.mdf) for file-based database creation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-LogFilePath <String>`

> Optional log file path (.ldf) for file-based database creation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-DetachAfterCreation`

> Detach database after creation (for file-based databases).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
## Related Links

- [EnsureSSMSInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSSMSInstalled.md)
- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerSchema.md)
- [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTableColumnData.md)
- [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTableData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTableSchema.md)
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SSMS.md)
