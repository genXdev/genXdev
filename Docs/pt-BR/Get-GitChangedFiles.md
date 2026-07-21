# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Obtenha a lista de arquivos alterados em um repositório Git.

## Description

Esta função recupera a lista de arquivos que foram alterados no repositório Git atual. Pode ser usada para identificar quais arquivos foram modificados, adicionados ou excluídos. Por padrão, retorna caminhos relativos com o prefixo .\ . Use -PassThru para obter objetos FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Retorna objetos FileInfo (como Get-ChildItem) em vez de strings de caminho. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Retorna caminhos relativos como ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Retorna objetos FileInfo para cada arquivo alterado.

## Parameter Details

### `-PassThru`

> Retorna objetos FileInfo (como Get-ChildItem) em vez de strings de caminho.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/PermanentlyDeleteGitFolders.md)
