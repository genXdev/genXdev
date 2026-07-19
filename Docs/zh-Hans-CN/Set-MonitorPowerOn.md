# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> 打开显示器电源。

## Description

通过 GenXdev.Helpers.WindowObj 使用 Windows API 将显示器从睡眠/关机状态唤醒。这对于需要确保显示器已开启的自动化脚本非常有用。

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

打开显示器电源。

### Example 2

```powershell
wake-monitor
```

使用别名打开显示器电源。

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
