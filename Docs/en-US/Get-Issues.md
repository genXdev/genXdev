# Get-Issues

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issues

## Synopsis

> Displays issues from a README.md file.

## Description

Shows all issues from the "## Issues" section of a README.md file. Can use
either the README in the current location, PowerShell profile directory, or
OneDrive directory.

## Syntax

```powershell
Get-Issues [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sort lines by date (yyyyMMdd prefix) instead of priority |
| `-Ascending` | SwitchParameter | — | — | Named | — | Reverse the sort order (ascending instead of descending) |
| `-First` | Int32 | — | — | 0 | `0` | Limit output to the first N lines |

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
