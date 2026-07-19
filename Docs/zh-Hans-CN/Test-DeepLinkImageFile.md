# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 测试指定的文件路径是否为有效且格式支持的图像文件。

## Description

此函数用于验证指定路径下的文件是否存在，且扩展名为支持的图像文件格式。它会检查常见的图像格式，包括PNG、JPG、JPEG、GIF、BMP、WebP、TIFF和TIF文件。函数会在路径无效或文件格式不受支持时抛出异常。

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | 待测试图像文件的文件路径 |

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
