# Get-ImageMetadata

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 从图像文件中提取全面的元数据。

## Description

此函数从图像文件中读取EXIF、IPTC及其他元数据。它提取包括相机参数、曝光设置、GPS坐标、日期、版权信息等在内的广泛数据。支持包含EXIF数据元数据（JPEG、TIFF）以及PNG元数据的图像。

## Syntax

```powershell
Get-ImageMetadata -ImagePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | — | 0 | — | 要分析的图像文件路径 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置首选项，也要强制显示同意提示以安装ImageSharp包。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意第三方软件安装，并为ImageSharp包设置持久标志。 |

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
