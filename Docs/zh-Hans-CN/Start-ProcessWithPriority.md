# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
