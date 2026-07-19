# Get-Issues

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issues

## Synopsis

> 显示 README.md 文件中的问题。

## Description

显示 README.md 文件中“## Issues”部分的所有问题。可以使用当前位置、PowerShell 配置文件目录或 OneDrive 目录中的 README。

## Syntax

```powershell
Get-Issues [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 在 PowerShell 配置文件目录中使用 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 按日期（yyyyMMdd前缀）排序，而非优先级 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 将排序顺序颠倒（升序改为降序） |
| `-First` | Int32 | — | — | 0 | `0` | 将输出限制在前N行 |

## Examples

### Issues -UseHomeREADME

```powershell
Issues -UseHomeREADME
```

### Issues -UseOneDriveREADME

```powershell
Issues -UseOneDriveREADME
```

## Related Links

- [Get-Issues on GitHub](https://github.com/genXdev/genXdev)
