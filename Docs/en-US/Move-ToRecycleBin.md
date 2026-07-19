# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Moves files and directories to the Windows Recycle Bin safely.

## Description

* Safely moves files or directories to the recycle bin using the Windows
  Shell API, even if they are currently in use.
* The function uses the Shell.Application COM object to perform the
  operation, ensuring proper recycling behavior and undo capability.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Specify the path(s) to move to the recycle bin |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

Move a single file to the recycle bin.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

Move multiple files to the recycle bin using pipeline and alias.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
