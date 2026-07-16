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
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | 存在しない場合はディレクトリを作成します |
| `-CreateFile` | SwitchParameter | — | — | Named | — | 存在しない場合は空のファイルを作成します |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | ファイルが既に存在する場合は削除します |
| `-ForceDrive` | Char | — | — | Named | `'*'` | 特定のドライブの使用を強制します |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | ファイルが存在しない場合はスローされます |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | ディレクトリが存在しない場合はスローされます |

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
