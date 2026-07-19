# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 从指定目录随机设置壁纸。

## Description

从指定目录中随机选择一张图片文件，并将其设置为Windows桌面壁纸。支持JPG/JPEG图片格式，默认将壁纸配置为“适应”屏幕。

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | 包含壁纸图像的目录路径 |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | 搜索所有可用驱动器 |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | 不递归到子目录 |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

从 C:\Wallpapers 目录中随机设置壁纸。

### Example 2

```powershell
nextbg
```

使用别名从默认目录中设置随机壁纸。

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
