# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> Adiciona um item de tarefa ao arquivo README.md.

## Description

Adiciona um item de tarefa com timestamp à seção "## Tarefas" de um arquivo README.md.
Os itens de tarefa podem ser marcados como concluídos e a seção modificada pode ser exibida.
Cada novo item de tarefa recebe timestamp automaticamente, a menos que esteja sendo marcado como concluído.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The todo item text to add |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir README no Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Mostre a seção modificada |
| `-Done` | SwitchParameter | — | — | Named | — | Marcar item de tarefa como concluído |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README no diretório do perfil do PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use o README no diretório do OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridade para ordenação (maior = exibido primeiro, padrão 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Classificar linhas por data (prefixo yyyyMMdd) em vez de prioridade |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverter a ordem de classificação (crescente em vez de decrescente) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Mostrar saída até as primeiras N linhas |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
