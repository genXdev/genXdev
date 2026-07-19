# Get-ImageMetadata

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает полные метаданные из файла изображения.

## Description

Эта функция читает метаданные EXIF, IPTC и другие из файла изображения. Она извлекает широкий спектр информации, включая детали камеры, параметры экспозиции, координаты GPS, даты, информацию об авторских правах и многое другое. Она поддерживает изображения, содержащие метаданные в своих данных EXIF (JPEG, TIFF), а также метаданные PNG.

## Syntax

```powershell
Get-ImageMetadata -ImagePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | — | 0 | — | Path to the image file to analyze |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Заставить принудительно отображать запрос согласия, даже если настройки для пакета ImageSharp установлены. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего программного обеспечения и устанавливать постоянный флаг для пакетов ImageSharp. |

## Examples

### Get-ImageMetadata -ImagePath "C:\Pictures\vacation.jpg"

```powershell
Get-ImageMetadata -ImagePath "C:\Pictures\vacation.jpg"
```

### "C:\Pictures\vacation.jpg" | Get-ImageMetadata

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageMetadata
```

### Get-ImageMetadata -ImagePath "C:\Pictures\photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Get-ImageMetadata -ImagePath "C:\Pictures\photo.webp" -ConsentToThirdPartySoftwareInstallation
```

## Outputs

- `Collections.Hashtable
Returns a hashtable containing all available metadata categories including:
- Basic (dimensions, format, etc.)
- Camera (make, model, etc.)
- Exposure (aperture, shutter speed, ISO, etc.)
- GPS (latitude, longitude, etc.)
- DateTime (when taken, modified, etc.)
- Author (artist, copyright, etc.)
- Additional (software, comments, etc.)`
- `GenXdev.Helpers.ImageSearchResultMetadata`

## Related Links

- [Get-ImageMetadata on GitHub](https://github.com/genXdev/genXdev)
