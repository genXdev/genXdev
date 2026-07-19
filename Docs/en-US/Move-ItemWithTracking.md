# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Moves files and directories while preserving filesystem links and
references.

## Description

* Uses the Windows MoveFileEx API to move files and directories with link
  tracking enabled, ensuring filesystem references are maintained.
* If the source path is under Git control, it attempts to use git mv to
  track the rename in Git.
* Falls back to MoveFileEx if Git is not available or git mv fails.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Source path of file/directory to move |
| `-Destination` | String | ✅ | — | 1 | — | Destination path to move to |
| `-Force` | SwitchParameter | — | — | Named | `False` | Overwrite destination if it exists |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

Moves a file while preserving filesystem links and Git tracking.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

Moves a directory, overwriting destination if it exists.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
