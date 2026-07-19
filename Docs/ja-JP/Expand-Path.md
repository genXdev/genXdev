# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> 指定されたファイル参照をフルパス名に展開します。

## Description

指定されたファイル参照を、ユーザーの現在のディレクトリを基準とした絶対パスに展開します。必要に応じて、ディレクトリやファイルが存在することを確認できます。

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
