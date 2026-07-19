# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> Performs text replacement throughout a project directory.

## Description

Recursively searches through files and directories in a project to perform text
replacements. Handles both file/directory names and file contents. Skips common
binary files and repository folders (.git, .svn) to avoid corruption. Uses UTF-8
encoding without BOM for file operations. Supports both case-sensitive and
case-insensitive replacement modes.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | The directory, filepath, or directory+searchmask |
| `-FindText` | String | ✅ | — | 1 | — | The text to find (case sensitivity controlled by CaseInsensitive parameter) |
| `-ReplacementText` | String | ✅ | — | 2 | — | The text to replace matches with |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
