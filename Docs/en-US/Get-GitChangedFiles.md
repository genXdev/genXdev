# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Get the list of changed files in a Git repository.

## Description

This function retrieves the list of files that have been changed in the current Git repository. It can be used to identify which files have been modified, added, or deleted. By default, returns relative paths with .\ prefix. Use -PassThru to get FileInfo objects.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Returns FileInfo objects (like Get-ChildItem) instead of path strings. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Returns relative paths like ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Returns FileInfo objects for each changed file.

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
