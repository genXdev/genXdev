# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> Assegura e melhora os testes de unidade de um cmdlet específico do GenXdev.

## Description

Esta função ajuda a manter e melhorar testes unitários para cmdlets do GenXdev ao:
1. Criar arquivos de teste se eles não existirem
2. Abrir o cmdlet no VS Code
3. Preparar e aplicar prompts de IA para geração/melhoria de testes
4. Gerenciar o fluxo de trabalho de execução de testes

## Syntax

```powershell
Assert-GenXdevCmdletTests -CmdletName <String> [[-Prompt] <String>] [[-PromptKey] <String>] [-AssertFailedTest] [-ContinuationHandled] [-EditPrompt] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome do cmdlet para melhorar testes unitários |
| `-Prompt` | String | — | — | 1 | `''` | Texto de prompt de IA personalizado para usar |
| `-PromptKey` | String | — | — | 2 | — | A chave de prompt de IA a ser usada para a seleção de modelo |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Mude para apenas editar o prompt de IA |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Indica que uma falha em um teste deve ser afirmada |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Pesquisar em arquivos de script em vez de módulos |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Examples

### Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt

```powershell
Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt
```

### improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest ##############################################################################

```powershell
improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest
##############################################################################
```

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
