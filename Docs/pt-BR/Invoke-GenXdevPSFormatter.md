# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Formata arquivos de script do PowerShell usando regras de formatação do PSScriptAnalyzer.

## Description

Esta função aplica regras de formatação do PowerShell a arquivos de script usando o cmdlet Invoke-Formatter do PSScriptAnalyzer. Ela pode processar arquivos individuais ou formatar recursivamente vários arquivos em diretórios. A função usa configurações de formatação personalizáveis e fornece registro detalhado do processo de formatação.

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Especifica o caminho para o arquivo de script a ser formatado. |
| `-Settings` | Object | — | — | Named | — | Uma hashtable de configurações ou um caminho para um arquivo de dados do PowerShell (.psd1) que contém as configurações de formatação. |
| `-Range` | Int32[] | — | — | Named | — | O intervalo dentro do qual a formatação deve ocorrer como uma matriz de quatro inteiros: número da linha inicial, número da coluna inicial, número da linha final, número da coluna final. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Processa recursivamente arquivos em subdiretórios. |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
