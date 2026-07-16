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
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Путь для расширения |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Создаст каталог, если он не существует |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Создаст пустой файл, если он не существует |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Если файл уже существует, он будет удален |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Будет принудительно использовать конкретный диск |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Бросает исключение, если файл не существует |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Выдаст ошибку, если директория не существует |

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
