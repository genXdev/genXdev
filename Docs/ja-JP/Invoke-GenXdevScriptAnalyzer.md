# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> PowerShell Script Analyzerを呼び出して、PowerShellスクリプトのコンプライアンスとベストプラクティスを分析します。

## Description

この関数は、PowerShellスクリプトのコンプライアンス問題、ベストプラクティス違反、潜在的なバグを分析するためのPSScriptAnalyzerのラッパーを提供します。ファイルベースの分析と文字列ベースのスクリプト分析の両方をサポートし、カスタマイズ可能なルールと設定が可能です。

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | スクリプトファイルへのパスを指定します。 *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | スクリプト定義を文字列として指定します。 *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | ツールがエラー時に終了することを指定します。 |
| `-Fix` | SwitchParameter | — | — | Named | — | 違反の自動修正を有効にします。 |
| `-Recurse` | SwitchParameter | — | — | Named | — | ファイルを再帰的に処理します。 |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | 分析後に概要を報告します。 |

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
