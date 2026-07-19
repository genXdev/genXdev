# Get-Features

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `features

## Synopsis

> Exibe recursos de um arquivo README.md.

## Description

Exibe todos os recursos da seção "## Recursos" de um arquivo README.md. Pode usar tanto o README no local atual, o diretório de perfil do PowerShell, ou o diretório do OneDrive.

## Syntax

```powershell
Get-Features [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### Features -UseHomeREADME

```powershell
Features -UseHomeREADME
```

## Related Links

- [Get-Features on GitHub](https://github.com/genXdev/genXdev)
