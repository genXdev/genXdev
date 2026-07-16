# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Especifica o caminho para o arquivo de script. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Especifica a definição do script como uma string. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Especifica que a ferramenta deve sair em caso de erro. |
| `-Fix` | SwitchParameter | — | — | Named | — | Permite a correção automática de violações. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Processar arquivos recursivamente. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Relata um resumo após a análise. |

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
