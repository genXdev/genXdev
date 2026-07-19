# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Obtenha a lista de arquivos alterados em um repositório Git.

## Description

Esta função recupera a lista de arquivos que foram alterados no repositório Git atual. Ela pode ser usada para identificar quais arquivos foram modificados, adicionados ou excluídos. Por padrão, retorna caminhos relativos com o prefixo .\. Use -PassThru para obter objetos FileInfo.

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

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
