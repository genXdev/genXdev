# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Opens one or more files in Visual Studio Code.

## Description

This function takes file paths and opens them in Visual Studio Code. It expands
paths and validates file existence before attempting to open them. The function
supports both direct file paths and pipeline input, making it ideal for quickly
opening multiple files from terminal searches.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | The path to the file to open in VSCode |
| `-Copilot` | SwitchParameter | — | — | Named | — | Add sourcefile to Copilot edit-session |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
