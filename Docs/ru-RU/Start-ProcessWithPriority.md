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
| `-FilePath` | String | ✅ | — | 0 | — | Путь к исполняемому файлу |
| `-ArgumentList` | String[] | — | — | 1 | — | Arguments to pass to the executable |
| `-Priority` | String | — | — | 2 | — | Уровень приоритета процесса |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Не ждите завершения процесса |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Возвращает объект процесса |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
