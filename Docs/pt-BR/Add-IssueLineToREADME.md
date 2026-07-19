# Add-IssueLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issue

## Synopsis

> Adiciona um item de issue ao arquivo README.md.

## Description

Adiciona um problema com timestamp à seção "## Issues" de um arquivo README.md.
Pode exibir a seção modificada e abri-la no Visual Studio Code.

## Syntax

```powershell
Add-IssueLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | O texto do problema a ser adicionado |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir README no Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Mostre a seção modificada |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README no diretório do perfil do PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use o README no diretório do OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridade para ordenação (maior = exibido primeiro, padrão 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Classificar linhas por data (prefixo yyyyMMdd) em vez de prioridade |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverter a ordem de classificação (crescente em vez de decrescente) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Mostrar saída até as primeiras N linhas |

## Examples

### Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME

```powershell
Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME
```

### issue "Server connection fails" -Show

```powershell
issue "Server connection fails" -Show
```

## Related Links

- [Add-IssueLineToREADME on GitHub](https://github.com/genXdev/genXdev)
