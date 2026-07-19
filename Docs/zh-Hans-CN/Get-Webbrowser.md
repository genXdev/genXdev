# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 返回已安装的现代Web浏览器的集合。

## Description

* 发现并返回系统中安装的现代网络浏览器的详细信息。
* 通过查询Windows注册表获取信息，包括名称、描述、图标路径、可执行路径以及是否为默认浏览器。
* 仅返回在Windows中注册了所需功能的浏览器。

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | 选择 Microsoft Edge 浏览器实例 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | 选择 Google Chrome 浏览器实例 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | 选择默认的基于 Chromium 的浏览器 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | 选择 Firefox 浏览器实例 *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

返回所有已安装的现代网页浏览器的集合。

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

筛选条件，只显示系统默认浏览器。

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
