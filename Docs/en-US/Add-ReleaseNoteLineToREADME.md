# Add-ReleaseNoteLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenote

## Synopsis

> Adds a ReleaseNote line to the README file with a timestamp.

## Description

Adds a ReleaseNote line to the specified README file, prefixed with the current date
in yyyyMMdd format. The line can be formatted as code and optionally displayed.

## Syntax

```powershell
Add-ReleaseNoteLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The ReleaseNote description text to add |
| `-Code` | SwitchParameter | — | — | Named | — | Format the line as code |
| `-Show` | SwitchParameter | — | — | Named | — | Display the README after adding the line |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in home directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Priority for sorting (higher = shown first, default 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sort lines by date (yyyyMMdd prefix) instead of priority |
| `-Ascending` | SwitchParameter | — | — | Named | — | Reverse the sort order (ascending instead of descending) |
| `-First` | Int32 | — | — | Named | `0` | Limit -Show output to the first N lines |

## Examples

### Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"

```powershell
Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"
```

### ReleaseNote "Added new Git ReleaseNote" -Code -Show

```powershell
ReleaseNote "Added new Git ReleaseNote" -Code -Show
```

## Related Links

- [Add-ReleaseNoteLineToREADME on GitHub](https://github.com/genXdev/genXdev)
