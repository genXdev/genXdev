# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Извлекает данные геолокации из файла изображения.

## Description

* Читает метаданные EXIF из файла изображения для извлечения его широты и долготы.
* Поддерживает изображения, содержащие GPS-метаданные в их данных EXIF.
* Использует класс System.Drawing.Image для загрузки изображения и анализа GPS-координат из свойств элемента.

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Path to the image file to analyze |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

Извлекает координаты GPS из фотографии отпуска.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

Использует конвейер для передачи пути к изображению.

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
