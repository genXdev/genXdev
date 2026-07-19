# Get-Issues

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issues

## Synopsis

> Exibe problemas de um arquivo README.md.

## Description

Mostra todos os problemas da seção "## Issues" de um arquivo README.md. Pode usar o README no local atual, no diretório do perfil do PowerShell ou no diretório do OneDrive.

## Syntax

```powershell
Get-Issues [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README no diretório do perfil do PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use o README no diretório do OneDrive |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Classificar linhas por data (prefixo yyyyMMdd) em vez de prioridade |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverter a ordem de classificação (crescente em vez de decrescente) |
| `-First` | Int32 | — | — | 0 | `0` | Limitar a saída às primeiras N linhas |

## Examples

### Issues -UseHomeREADME

```powershell
Issues -UseHomeREADME
```

### Issues -UseOneDriveREADME

```powershell
Issues -UseOneDriveREADME
```

## Related Links

- [Get-Issues on GitHub](https://github.com/genXdev/genXdev)
