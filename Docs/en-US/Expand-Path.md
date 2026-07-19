# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> Expands any given file reference to a full pathname.

## Description

Expands any given file reference to a full pathname, with respect to the user's
current directory. Can optionally assure that directories or files exist.

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Path to expand |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Will create directory if it does not exist |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Will create an empty file if it does not exist |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Will delete the file if it already exists |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Will force the use of a specific drive |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Will throw if file does not exist |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Will throw if directory does not exist |

## Examples

### Expand-Path -FilePath ".\myfile.txt" -CreateFile

```powershell
Expand-Path -FilePath ".\myfile.txt" -CreateFile
```

### ep ~\documents\test.txt -CreateFile

```powershell
ep ~\documents\test.txt -CreateFile
```

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
