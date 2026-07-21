# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb`

## Synopsis

> Creates a new SQLite database file.

## Description

Creates a new SQLite database file at the specified path if it does not already
exist. The function ensures the target directory exists and creates a valid
SQLite database by establishing and closing a connection.

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | The path to the SQLite database file |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQLite package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQLite package. |

## Examples

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"
```

### nsqldb "C:\Databases\MyNewDb.sqlite"

```powershell
nsqldb "C:\Databases\MyNewDb.sqlite"
```

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation
```

## Parameter Details

### `-DatabaseFilePath <String>`

> The path to the SQLite database file

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
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

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteSchema.md)
- [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTableColumnData.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTables.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTableSchema.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SQLiteQuery.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SQLiteStudio.md)
