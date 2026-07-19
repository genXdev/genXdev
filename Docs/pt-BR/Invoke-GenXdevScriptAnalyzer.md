# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Invoca o PowerShell Script Analyzer para analisar scripts do PowerShell quanto à conformidade e melhores práticas.

## Description

Esta função fornece um wrapper em torno do PSScriptAnalyzer para analisar scripts do PowerShell quanto a problemas de conformidade, violações de melhores práticas e possíveis bugs. Ela suporta análise baseada em arquivos e análise de scripts baseada em strings com regras e configurações personalizáveis.

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

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
