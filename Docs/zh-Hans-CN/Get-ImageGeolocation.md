# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 从图像文件中提取地理位置数据。

## Description

* 从图像文件中读取EXIF元数据，提取其纬度和经度坐标。
* 支持包含EXIF数据中GPS元数据的图像。
* 使用System.Drawing.Image类加载图像，并从属性项中解析GPS坐标。

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要分析的图像文件路径 |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

从度假照片中提取GPS坐标。

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

使用管道传递图像路径。

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
