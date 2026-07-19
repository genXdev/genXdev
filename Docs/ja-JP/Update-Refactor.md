# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> ファイル選択や処理を含むリファクタリングセットの更新と管理を行います。

## Description

リファクタリングセットの包括的な管理を提供します：
- 処理キューへのファイルの追加または削除
- セットから削除されたファイルのクリーンアップ
- 状態情報と進捗状況の追跡管理
- LLMベースのファイル選択と処理の実行
- 自動および手動のファイル管理の両方をサポート
- すべての操作の詳細なログの維持
- 削除されたファイルの適切な処理（CleanUpDeletedFilesが使用されない限りスキップ）

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | リファクタリングの名前、ワイルドカードを受け入れます *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | 更新するリファクタリングセット *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | 追加するファイル名 |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | 削除するファイル名 |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | 変更日付でファイルを選択する |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | 変更日でファイルを選択するには |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | 作成日でファイルを選択 |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | 作成日でファイルを選択する |
| `-PromptKey` | String | — | — | Named | — | プロンプトキーは、使用するプロンプトスクリプトを示します。 |
| `-Prompt` | String | — | — | Named | `''` | プロンプトキーは、使用するプロンプトスクリプトを示します。 |
| `-SelectionScript` | String | — | — | Named | — | リファクタリング対象を選択するためのPowerShellスクリプト |
| `-SelectionPrompt` | String | — | — | Named | — | 提供されている場合、スクリプトの内容に基づいてLLMを呼び出して選択を実行します |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-Priority` | Int32 | — | — | Named | — | このリファクタリングの優先順位 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLM選択中にツールとして使用するPowerShellコマンド定義の配列 |
| `-KeysToSend` | String[] | — | — | Named | `@()` | ファイルを開いた後にキー入力として呼び出すキー |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | 削除されたファイルをクリーンアップ |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | ユーザー操作を抑制するスイッチ |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | LLMベースのファイル選択処理を有効にするためのスイッチ |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | リファクタリングセット内のすべてのファイルを処理するように切り替えます |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | 失敗したLLMの選択を再試行するように切り替える |
| `-Clear` | SwitchParameter | — | — | Named | — | リファクタリングセットからすべてのファイルをクリアする |
| `-ClearLog` | SwitchParameter | — | — | Named | — | リファクタリングセットのログをクリアする |
| `-Reset` | SwitchParameter | — | — | Named | — | リファクタリングセットの最初から始めてください |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | 全LLMSeletionsを再起動する |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | すべてのファイルをリファクタリング済みとしてマーク |
| `-RedoLast` | SwitchParameter | — | — | Named | — | 前回のリファクタリングをやり直してください |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | 前回の更新以降に変更されたファイルを自動的に再処理する |
| `-Code` | SwitchParameter | — | — | Named | — | ファイルを開くためのIDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Visual Studio で開く |
| `-Speak` | SwitchParameter | — | — | Named | — | 次のリファクタリングの詳細を説明してください。 |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 使用可能なシステムRAMで設定を選択する |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 利用可能なGPUメモリに基づいて設定を選択 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
```

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)
