# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> 关闭所有已连接显示器的电源。

## Description

使用Windows API调用向所有连接的显示器发送断电信号。这相当于按下显示器的物理电源按钮。显示器将进入省电模式，但可通过移动鼠标或按下按键唤醒。

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

关闭所有连接的显示器。

### Example 2

```powershell
poweroff
```

使用别名关闭所有已连接的显示器。

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
