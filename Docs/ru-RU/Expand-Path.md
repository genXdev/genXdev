# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> Расширяет любую заданную ссылку на файл до полного пути.

## Description

Преобразует любую заданную ссылку на файл в полный путь, относительно текущей директории пользователя. При необходимости может проверять существование директорий или файлов.

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
