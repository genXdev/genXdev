# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | O nome do refatorador aceita curingas 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Especifica o caminho para o arquivo de banco de dados de preferências. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Se definido, use apenas o cache de sessão para dados de refatoração. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Se definido, limpe o cache da sessão antes de executar. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Se definido, pula o carregamento do cache de sessão. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Relatório de saída em formato de texto em vez de Hashtable |

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
