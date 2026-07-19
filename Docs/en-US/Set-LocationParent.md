# Set-LocationParent

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `..

## Synopsis

> Changes the current location to the parent directory and lists its contents.

## Description

* Navigates up one directory level in the file system hierarchy.
* Displays the contents of the new current directory.
* Provides a convenient '..' alias for quick directory navigation.

## Syntax

```powershell
Set-LocationParent [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-LocationParent
```

Changes to the parent directory and lists its contents.

### Example 2

```powershell
..
```

Uses the alias to change to the parent directory.

## Related Links

- [Set-LocationParent on GitHub](https://github.com/genXdev/genXdev)
