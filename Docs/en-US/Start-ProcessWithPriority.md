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
| `-FilePath` | String | ✅ | — | 0 | — | Path to the executable to run |
| `-ArgumentList` | String[] | — | — | 1 | — | Arguments to pass to the executable |
| `-Priority` | String | — | — | 2 | — | Process priority level |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Don't wait for process completion |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Return the process object |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
