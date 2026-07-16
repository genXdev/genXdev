# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
