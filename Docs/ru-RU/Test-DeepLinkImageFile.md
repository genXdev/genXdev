# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Проверяет, является ли указанный путь к файлу действительным файлом изображения с поддерживаемым форматом.

## Description

Эта функция проверяет, существует ли файл по указанному пути и имеет ли он поддерживаемое расширение файла изображения. Она проверяет распространенные форматы изображений, включая PNG, JPG, JPEG, GIF, BMP, WebP, TIFF и TIF. Функция вызывает исключения для недопустимых путей или неподдерживаемых форматов файлов.

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | Путь к файлу изображения для тестирования |

## Examples

### Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"

```powershell
Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"
```

### Test-DeepLinkImageFile "C:\Images\logo.png"

```powershell
Test-DeepLinkImageFile "C:\Images\logo.png"
```

## Related Links

- [Test-DeepLinkImageFile on GitHub](https://github.com/genXdev/genXdev)
