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
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要展开的路径 |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | 如果目录不存在，则将创建它。 |
| `-CreateFile` | SwitchParameter | — | — | Named | — | 如果文件不存在，将创建一个空文件 |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | 如果文件已存在，则会将其删除 |
| `-ForceDrive` | Char | — | — | Named | `'*'` | 将强制使用特定驱动器 |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | 如果文件不存在，将抛出异常 |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | 如果目录不存在则抛出错误 |

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
