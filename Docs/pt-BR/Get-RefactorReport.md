# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> Gera um relatório detalhado das operações de refatoração e seu status.

## Description

Analisa e relata o progresso das operações de refatoração examinando seu estado atual, status de conclusão e funções afetadas. Fornece saída em formato de hashtable estruturado ou colunas de texto alinhadas legíveis por humanos. O relatório inclui nome da refatoração, chave do prompt, prioridade, status, contagem de funções e porcentagem de conclusão.

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

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Gera um relatório de texto para refatorações correspondentes a "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Gera relatório de hashtable para todos os refactors usando alias.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
