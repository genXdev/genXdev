# New-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `newrefactor`

## Synopsis

> コード変換タスク用の新しいリファクタリングセットを作成します。

## Description

LLMベースのコード変換用に指定された設定で新しいリファクタリング定義を作成し、構成します。この関数は以下の処理を行います：
- リファクタリング構成の設定
- 選択基準とプロンプトの構成
- LLMモデル設定の管理
- 開発環境との統合
- リファクタ定義の永続化

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | この新しいリファクターセットの名前 |
| `-PromptKey` | String | ✅ | — | 1 | — | プロンプトキーは、使用するプロンプトスクリプトを示します。 |
| `-Prompt` | String | — | — | 2 | `''` | テンプレートを上書きするカスタムプロンプトテキスト |
| `-SelectionScript` | String | — | — | 3 | — | リファクタリング対象を選択するためのPowerShellスクリプト |
| `-SelectionPrompt` | String | — | — | 4 | — | LLM選択ガイダンスプロンプト |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | LLMクエリのタイプ |
| `-Model` | String | — | — | Named | — | AI操作に使用するモデル識別子またはパターン |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | 利用可能なシステムRAMに基づいて構成を選択する |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | 利用可能なGPU RAMに基づいて構成を選択する |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性の温度 (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作のAPIエンドポイントURL |
| `-ApiKey` | String | — | — | Named | — | 認証されたAI操作のためのAPIキー |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLMがJSONスキーマをサポートしていないことを示します |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作のタイムアウト（秒） |
| `-Priority` | Int32 | — | — | Named | `0` | このリファクタリングの優先度設定 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLMツール用のPowerShellコマンド定義の配列 |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | 処理するファイルの配列 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | ユーザー設定データファイルのデータベースパス |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | 変更されたファイルを自動的にキューに追加します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI の設定にセッションに保存された代替設定を使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI設定のためにセッションに保存されている代替設定をクリアします |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 永続設定のみに保存し、セッションには影響を与えない |
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

## Parameter Details

### `-Name <String>`

> この新しいリファクターセットの名前

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PromptKey <String>`

> プロンプトキーは、使用するプロンプトスクリプトを示します。

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> テンプレートを上書きするカスタムプロンプトテキスト

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionScript <String>`

> リファクタリング対象を選択するためのPowerShellスクリプト

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionPrompt <String>`

> LLM選択ガイダンスプロンプト

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLMクエリのタイプ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI操作に使用するモデル識別子またはパターン

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeRam`

> 利用可能なシステムRAMに基づいて構成を選択する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeGpuRam`

> 利用可能なGPU RAMに基づいて構成を選択する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> 応答のランダム性の温度 (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI操作のAPIエンドポイントURL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> 認証されたAI操作のためのAPIキー

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLMがJSONスキーマをサポートしていないことを示します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> AI 操作のタイムアウト（秒）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> このリファクタリングの優先度設定

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> LLMツール用のPowerShellコマンド定義の配列

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> 処理するファイルの配列

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> ユーザー設定データファイルのデータベースパス

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAddModifiedFiles`

> 変更されたファイルを自動的にキューに追加します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> AI の設定にセッションに保存された代替設定を使用する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> AI設定のためにセッションに保存されている代替設定をクリアします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 永続設定のみに保存し、セッションには影響を与えない

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Visual Studio Code でファイルを開く

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> Visual Studio で開く

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> ファイルを開いた後に送信するキーストローク

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Todoos.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/VSCode.md)
