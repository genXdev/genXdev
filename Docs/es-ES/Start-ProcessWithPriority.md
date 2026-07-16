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
| `-FilePath` | String | ✅ | — | 0 | — | Ruta al ejecutable que se va a ejecutar |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumentos para pasar al ejecutable |
| `-Priority` | String | — | — | 2 | — | Nivel de prioridad del proceso |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | No esperes a que el proceso termine |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Return the process object |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
