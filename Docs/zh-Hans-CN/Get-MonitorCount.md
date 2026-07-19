# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取连接到系统的显示监视器总数。

## Description

* 使用 Windows Presentation Foundation (WPF) 屏幕辅助类来准确确定当前连接到系统的物理显示监视器数量。
* 这包括已激活和已检测但禁用的监视器。

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

返回连接的显示器总数（例如 2）。

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

返回显示器数量，并带有详细的检测过程输出。

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
