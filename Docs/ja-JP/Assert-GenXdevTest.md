# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> GenXdevモジュール、サブモジュール、またはコマンドレットの単体テストを実行し、インテリジェントなデバッグとAI搭載のエラー解決を行います。

## Description

この関数はGenXdevモジュールのテストフレームワークを提供し、モジュール全体から個々のコマンドレットまで複数レベルのテスト実行を可能にします。PSScriptAnalyzerによる静的コード分析、Pesterによる単体テスト、およびPSScriptAnalyzerによる静的コード分析を統合しています。この関数には、AI駆動の解決機能を備えたインテリジェントなエラーハンドリングと、開発ワークフローのための詳細な進捗レポート機能が含まれています。

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | コマンドレットをフィルタリングする検索パターン 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | テストが失敗した場合のアクション。オプション: Ask, Continue, Stop, SolveWithAI, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | コマンドレット定義と一致する正規表現 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | 検索するGenXdevモジュール名 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ローカルモジュールパスの検索をスキップ |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 公開されたモジュールパス内のみを検索 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | モジュールの代わりにスクリプトファイル内を検索 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 通常のモジュールに加えて、scriptsディレクトリも含まれています。 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | コマンドレット名は完全一致でなければなりません |
| `-Verbosity` | String | — | — | Named | `'Normal'` | 出力詳細レベル |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | スタックトレースの詳細レベル |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | 実行時間の長い単体テストも選択します。 |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | テスト前にGenXdevモジュールのインポートをスキップします *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | PSAnalyzer テストの呼び出しをスキップします |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Pesterテストの呼び出しをスキップします |

## Examples

### Assert-GenXdevTest -ModuleName "GenXdev.AI" Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and Pester tests.

```powershell
Assert-GenXdevTest -ModuleName "GenXdev.AI"
Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and
Pester tests.
```

### Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `     -TestFailedAction SolveWithAI Tests the specified sub-module and uses AI to automatically resolve any failures encountered during testing.

```powershell
Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `
    -TestFailedAction SolveWithAI
Tests the specified sub-module and uses AI to automatically resolve any
failures encountered during testing.
```

### Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed Tests the specific cmdlet with detailed output showing all test operations and results.

```powershell
Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed
Tests the specific cmdlet with detailed output showing all test operations
and results.
```

### testcmdlet Assert-GenXdevTest Uses the alias to test the current cmdlet with default settings.

```powershell
testcmdlet Assert-GenXdevTest
Uses the alias to test the current cmdlet with default settings.
```

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
