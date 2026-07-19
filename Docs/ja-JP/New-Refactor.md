# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> コード変換タスク用の新しいリファクタリングセットを作成します。

## Description

LLMベースのコード変換のための指定された設定で新しいリファクタリング定義を作成し、構成します。この関数は以下を処理します：
- リファクタリング構成の設定
- 選択基準とプロンプトの構成
- LLMモデル設定の管理
- 開発環境との統合
- リファクタ定義の永続化

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | この新しいリファクタリングセットの名前 |
| `-PromptKey` | String | ✅ | — | 1 | — | プロンプトキーは、使用するプロンプトスクリプトを示します。 |
| `-Prompt` | String | — | — | 2 | `''` | Custom prompt text to override the template |
| `-SelectionScript` | String | — | — | 3 | — | リファクタリング対象アイテムを選択するためのPowerShellスクリプト |
| `-SelectionPrompt` | String | — | — | 4 | — | LLM選定ガイダンスプロンプト |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 使用可能なシステムRAMで設定を選択する |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 利用可能なGPUメモリに基づいて設定を選択 |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-Priority` | Int32 | — | — | Named | `0` | このリファクタリングの優先順位 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLMツール向けPowerShellコマンド定義の配列 |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | 処理するファイルの配列 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | 変更されたファイルを自動的にキューに追加します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-Code` | SwitchParameter | — | — | Named | — | Visual Studio Code でファイルを開く |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Visual Studio で開く |
| `-KeysToSend` | String[] | — | — | Named | `@()` | ファイルを開いた後に送信するキーストローク |

## Examples

### New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `     -SelectionScript "Get-LoggingMethods" -Priority 1 `     -Code

```powershell
New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `
    -SelectionScript "Get-LoggingMethods" -Priority 1 `
    -Code
```

### newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c

```powershell
newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c
```

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)
