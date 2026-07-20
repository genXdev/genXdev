# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures SSMS is installed and accessible from the command line.

## Description

Verifies if SSMS is installed and available in the system PATH. If not
found, it first checks if the PATH environment variable needs updating. If that
doesn't resolve the issue, it installs SSMS using WinGet and configures
the PATH environment variable.

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Parameter Details

### `-Force`

> The `-Force` parameter.

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
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-SSMS.md)
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-SQLServerDatabase.md)
