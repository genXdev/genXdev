# Get-GenXDevModule

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 从指定路径获取所有 GenXDev 模块。

## Description

此函数遍历目录结构以查找 GenXdev 模块，排除名称中包含 '.local' 的模块。对于每个找到的有效模块，它返回包含有效模块清单（.psd1）文件的最新版本文件夹（1.x）。

## Syntax

```powershell
Get-GenXDevModule [[-Path] <String>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | — | — | 0 | — | 查找 GenXdev 模块的根路径 |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModule -Path "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule -Path "C:\PowerShell\Modules"
```

### Get-GenXDevModule "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule "C:\PowerShell\Modules"
```

## Related Links

- [Get-GenXDevModule on GitHub](https://github.com/genXdev/genXdev)
