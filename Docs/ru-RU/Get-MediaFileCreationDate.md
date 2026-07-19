# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Extracts the best-effort creation date for media and other files.

## Description

Применяет несколько стратегий для определения точной даты создания или получения указанного файла. Стратегии включают чтение метаданных EXIF изображений, извлечение информации о дате/времени из имен файлов и использование времени последней записи файла, если недоступна другая надежная информация. Функция всегда возвращает [DateTime]; когда дату определить невозможно, она возвращает [DateTime]::MinValue.

## Syntax

```powershell
Get-MediaFileCreationDate -FilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The `-FilePath` parameter. |

## Examples

### Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

```powershell
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'
```

## Related Links

- [Get-MediaFileCreationDate on GitHub](https://github.com/genXdev/genXdev)
