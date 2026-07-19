# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> PSScriptAnalyzer の書式設定ルールを使用して PowerShell スクリプトファイルを書式設定します。

## Description

この関数は、PSScriptAnalyzerのInvoke-Formatterコマンドレットを使用して、スクリプトファイルにPowerShellの書式設定ルールを適用します。個別のファイルを処理することも、ディレクトリ内の複数のファイルを再帰的にフォーマットすることもできます。この関数はカスタマイズ可能な書式設定を使用し、書式設定プロセスの詳細なログを提供します。

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | フォーマットするスクリプトファイルへのパスを指定します。 |
| `-Settings` | Object | — | — | Named | — | 書式設定を含む設定ハッシュテーブル、またはPowerShellデータファイル（.psd1）へのパス。 |
| `-Range` | Int32[] | — | — | Named | — | 書式設定を適用する範囲を、開始行番号、開始列番号、終了行番号、終了列番号の4つの整数からなる配列で指定します。 |
| `-Recurse` | SwitchParameter | — | — | Named | — | サブディレクトリ内のファイルを再帰的に処理する |

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
