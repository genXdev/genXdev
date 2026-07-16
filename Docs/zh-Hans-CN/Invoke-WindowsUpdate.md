# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | 自动安装可用的 Windows 更新 |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | 如果更新需要重启，则自动重启 |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | 自定义 Windows 更新搜索条件 |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | 在更新搜索中包含驱动程序 |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | 按更新类别分组和颜色输出 |
| `-NoBanner` | SwitchParameter | — | — | Named | — | 禁用横幅/状态输出 |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | 跳过重启要求检查/报告 |

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
