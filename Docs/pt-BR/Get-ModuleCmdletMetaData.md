# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera metadados de todos os cmdlets em um módulo do PowerShell.

## Description

Recupera metadados completos de cmdlets (sinopse, descrição, parâmetros, exemplos, saídas e aliases) para cada cmdlet no módulo especificado, adicionando as propriedades SubModuleName e CmdletType a cada resultado.

A atribuição de sub-módulo usa dois caminhos independentes:

- Cmdlets de script (.ps1): arquivo de origem correspondido aos mapeamentos de diretório de dot-source .psm1 (Functions\<SubModuleName>\FileName.ps1).
- Cmdlets compilados (.dll): namespace de ImplementationType.Namespace (ex.: GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | O nome do módulo PowerShell do qual recuperar metadados de cmdlet |
| `-Language` | String | — | — | Named | — | pt-BR |
| `-TranslationInstructions` | String | — | — | Named | — | Você é um assistente prestativo, projetado para gerar JSON. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Ignore a tradução baseada em LLM |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Retorna metadados para todos os cmdlets no módulo GenXdev.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retorna metadados traduzidos para o holandês de todos os cmdlets do GenXdev.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
