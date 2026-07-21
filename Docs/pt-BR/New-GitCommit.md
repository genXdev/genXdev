# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Cria e envia um novo commit git com todas as alterações.

## Description

Prepara todas as alterações no repositório git atual, cria um commit com o título especificado e envia as alterações para a origem remota. Configura automaticamente o rastreamento upstream se necessário.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
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

Crie um commit com a mensagem personalizada "Adicionado novo recurso de autenticação".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Crie um commit usando o alias 'commit' com mensagem padrão.

## Parameter Details

### `-Title <String>`

> O título da mensagem de commit a ser usado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/PermanentlyDeleteGitFolders.md)
