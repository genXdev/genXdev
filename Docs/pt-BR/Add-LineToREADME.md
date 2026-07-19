# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Adiciona uma linha a um arquivo README.md em uma seção específica.

## Description

Localiza e modifica um arquivo README.md adicionando uma nova linha a uma seção específica.
Pode criar a seção se ela não existir. Suporta formatação de linhas como blocos
de código e exibição da seção modificada.

Primeiro, procura no diretório atual e, em seguida, percorre os diretórios pai para encontrar o README.
Se não for encontrado, usará o README no diretório de perfil do PowerShell.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | A linha a ser adicionada ao README |
| `-Section` | String | ✅ | — | 0 | — | A seção para adicionar a linha |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio Code após modificar |
| `-Show` | SwitchParameter | — | — | Named | — | Mostre a seção modificada |
| `-Done` | SwitchParameter | — | — | Named | — | Marcar item como concluído |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README no diretório do perfil do PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use o README no diretório do OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridade para ordenação (maior = exibido primeiro, padrão 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Classificar linhas por data (prefixo yyyyMMdd) em vez de prioridade |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverter a ordem de classificação (crescente em vez de decrescente) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Mostrar saída até as primeiras N linhas |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
