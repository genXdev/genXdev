# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> 检查 Windows 是否是最新版本，并可选择安装可用更新。

## Description

此函数检查Windows更新、winget包更新以及PowerShell模块更新。它可以显示可用更新或自动安装它们。该函数需要管理员权限才能安装Windows更新，并可在更新需要重启时选择重启系统。

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

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

检查可用的Windows和winget更新，但不安装它们。

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

自动安装所有可用的 Windows 和 winget 更新。

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

使用该别名安装所有更新，并在需要时自动重启。

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

按类别分组显示可用更新，以便更好地组织。

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Checks for updates including drivers with custom search criteria.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
