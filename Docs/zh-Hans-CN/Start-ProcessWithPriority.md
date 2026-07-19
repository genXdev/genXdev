# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> 以指定的优先级级别启动一个进程。

## Description

* 以可自定义的优先级级别启动可执行文件，并提供等待和进程处理的选项。
* 包装 Start-Process，增加控制进程优先级和执行行为的附加功能。

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 要运行的可执行文件的路径 |
| `-ArgumentList` | String[] | — | — | 1 | — | 传递给可执行文件的参数 |
| `-Priority` | String | — | — | 2 | — | Process priority level |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | 无需等待进程完成 |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | 返回进程对象 |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

以低优先级启动记事本并立即返回。

### Example 2

```powershell
nice notepad.exe -Priority High
```

使用 'nice' 别名以高优先级启动进程。

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
