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
| `-ScriptFilePath` | String | ✅ | — | 0 | — | スクリプトファイルへのパスを指定します。 *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | スクリプト定義を文字列として指定します。 *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | ツールがエラー時に終了することを指定します。 |
| `-Fix` | SwitchParameter | — | — | Named | — | 違反の自動修正を有効にします。 |
| `-Recurse` | SwitchParameter | — | — | Named | — | ファイルを再帰的に処理します。 |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | 分析後に概要を報告します。 |

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
