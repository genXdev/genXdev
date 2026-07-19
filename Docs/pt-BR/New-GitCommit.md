# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> Cria e envia um novo commit git com todas as alterações.

## Description

Prepara todas as alterações no repositório git atual, cria um commit com o título especificado e envia as alterações para o origin remoto. Configura automaticamente o rastreamento upstream, se necessário.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | O título da mensagem de commit a ser usado |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Crie um commit com a mensagem personalizada "Added new authentication feature".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Use o alias 'commit' para criar um commit com mensagem padrão.

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
