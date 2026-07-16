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
| `-FilePath` | String | ✅ | — | 0 | — | Pad naar het uitvoerbare bestand |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumenten om aan de uitvoerbare door te geven |
| `-Priority` | String | — | — | 2 | — | Procesprioriteitsniveau |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Wacht niet op voltooiing van het proces |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Geef het procesobject terug. |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
