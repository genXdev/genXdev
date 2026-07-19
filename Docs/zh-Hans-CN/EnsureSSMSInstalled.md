# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 确保SSMS已安装并可从命令行访问。

## Description

验证SSMS是否已安装并在系统PATH中可用。如果未找到，首先检查PATH环境变量是否需要更新。如果这不能解决问题，则使用WinGet安装SSMS并配置PATH环境变量。

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

## Related Links

- [EnsureSSMSInstalled on GitHub](https://github.com/genXdev/genXdev)
