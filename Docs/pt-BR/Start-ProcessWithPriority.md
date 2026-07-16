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
| `-FilePath` | String | ✅ | — | 0 | — | Caminho para o executável a ser executado |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumentos a serem passados para o executável |
| `-Priority` | String | — | — | 2 | — | Nível de prioridade do processo |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Não espere pela conclusão do processo |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | process |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
