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
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the cmdlet to improve unit-tests for |
| `-Prompt` | String | — | — | 1 | `''` | Texto de prompt de IA personalizado para usar |
| `-PromptKey` | String | — | — | 2 | — | La clave de prompt de IA a utilizar para la selección de plantillas |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Indica para afirmar una prueba fallida |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Buscar en archivos de script en lugar de módulos |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
