# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 捕获指定显示器的屏幕截图并保存到指定路径。

## Description

*   从指定显示器截取桌面截图并保存为图像文件。
*   支持多显示器，并自动检测高DPI显示器的正确屏幕边界和缩放比例。

## Syntax

```powershell
Save-DesktopScreenShot [-Monitor] <int> [-OutputPath] <string> [-Quality <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | 要捕获的显示器索引（0=主显示器，1+=特定显示器，-1=所有显示器） |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | 截屏将保存的完整路径 |
| `-Quality` | Int32 | — | — | Named | `0` | JPEG 质量级别（1-100），仅适用于 JPEG 格式 |

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

获取主显示器的屏幕截图并保存为PNG文件。

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

以高质量JPEG格式捕获第二个显示器的屏幕截图。

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

将所有显示器捕获合并为一张屏幕截图。

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
