# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> Recursively removes all content from a directory with advanced error handling.

## Description

Safely removes all files and subdirectories within a specified directory using
a reverse-order deletion strategy to handle deep paths. Includes WhatIf support,
verbose logging, and fallback deletion methods for locked files.

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The directory path to clear |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Also delete the root folder supplied with the Path parameter |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)
