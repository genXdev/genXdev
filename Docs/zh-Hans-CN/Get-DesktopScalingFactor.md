# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检索指定显示器的 Windows 显示缩放比例（DPI 设置）。

## Description

* 获取当前为系统中的显示器配置的Windows显示缩放比例。
* 缩放比例以百分比表示，其中100表示标准缩放（96 DPI）。常见值有100、125、150和200。
* 如果未指定显示器，则返回主显示器的缩放比例。

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | 要检查的显示器索引（0 = 主显示器） |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

返回主显示器的缩放比例百分比。

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

使用位置参数返回第二个显示器的缩放比例百分比。

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
