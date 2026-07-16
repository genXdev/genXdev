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
| `-FilePath` | String | ✅ | — | 0 | — | Chemin vers l'exécutable à lancer |
| `-ArgumentList` | String[] | — | — | 1 | — | Arguments à passer à l'exécutable |
| `-Priority` | String | — | — | 2 | — | Niveau de priorité du processus |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Ne pas attendre la fin du processus |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Retourner l'objet process |

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
