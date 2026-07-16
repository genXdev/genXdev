# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
