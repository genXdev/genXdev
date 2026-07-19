# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> Gets files from the Windows clipboard that were set for file operations
like copy/paste.

## Description

* This function retrieves file paths from the Windows clipboard that were
  previously set for file operations.
* It handles both STA and MTA threading modes automatically, ensuring
  compatibility across different PowerShell execution contexts.
* The function validates file existence and returns only existing
  files/directories as objects similar to Get-ChildItem or Get-Item output.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

Get all files currently in the clipboard as file system objects.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

Get clipboard files and display their full paths.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

Get only text files from the clipboard.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
