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
| `-FilePath` | String | ✅ | — | 0 | — | Pfad zur auszuführenden Datei |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumente, die an die ausführbare Datei übergeben werden sollen |
| `-Priority` | String | — | — | 2 | — | Prozessprioritätsstufe |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Don't wait for process completion |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Return the process object |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
