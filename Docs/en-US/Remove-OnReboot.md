# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Marks files or directories for deletion during the next system boot.

## Description

* Uses the Windows API to mark files for deletion on next boot.
* Handles locked files by first attempting to rename them to temporary
  names and tracks all moves to maintain file system integrity.
* If renaming fails, the -MarkInPlace parameter can be used to mark files
  in their original location.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Path(s) to files/directories to mark for deletion |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Marks files for deletion without renaming |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Marks a locked file for deletion during the next system boot.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Marks multiple files for deletion, using MarkInPlace for any that can't be
renamed.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
