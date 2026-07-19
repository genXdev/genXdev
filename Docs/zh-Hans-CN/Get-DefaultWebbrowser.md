# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 返回当前用户配置的默认 Web 浏览器。

## Description

通过查询Windows注册表获取系统默认网络浏览器的信息。返回一个哈希表，包含浏览器的名称、描述、图标路径和可执行文件路径。该函数会检查用户偏好和系统范围的浏览器注册信息，以确定默认浏览器。

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

获取默认浏览器的详细信息。

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

使用特定的URL启动默认浏览器。

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
