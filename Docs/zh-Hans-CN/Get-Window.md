# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取指定进程或窗口句柄的窗口信息。

## Description

* 使用进程名称、进程ID或窗口句柄检索窗口信息。
* 返回包含匹配进程主窗口详细信息的WindowObj对象。
* 按进程名称搜索时支持通配符。

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Name of the process to get window information for 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | 要获取窗口信息的进程ID |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | 用于获取信息的窗口句柄 |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

检索所有名为"notepad"的进程的窗口信息。

### Example 2

```powershell
Get-Window -ProcessId 1234
```

检索进程ID为1234的窗口信息。

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

检索句柄为45678的窗口信息。

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
