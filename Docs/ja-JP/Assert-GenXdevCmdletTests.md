# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> 指定されたGenXdevコマンドレットの単体テストを検証し、改善します。

## Description

この関数は、GenXdevコマンドレットの単体テストを維持・改善するために以下のことを行います：
1. テストファイルが存在しない場合は作成
2. VS Codeでコマンドレットを開く
3. テスト生成/改善のためのAIプロンプトを準備・適用
4. テスト実行ワークフローを管理

## Syntax

```powershell
Assert-GenXdevCmdletTests -CmdletName <String> [[-Prompt] <String>] [[-PromptKey] <String>] [-AssertFailedTest] [-ContinuationHandled] [-EditPrompt] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | ユニットテストを改善するためのコマンドレットの名前 |
| `-Prompt` | String | — | — | 1 | `''` | 使用するカスタムAIプロンプトテキスト |
| `-PromptKey` | String | — | — | 2 | — | テンプレート選択に使用するAIプロンプトキー |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | アシスタントは便利なJSONを出力することを目的としています。
## 応答形式

JSONオブジェクトのみで応答してください。それ以外のテキストは許可されません。 |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | 失敗したテストをアサートすることを示します |
| `-FromScripts` | SwitchParameter | — | — | Named | — | モジュールの代わりにスクリプトファイル内を検索 |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Examples

### Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt

```powershell
Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt
```

### improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest ##############################################################################

```powershell
improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest
##############################################################################
```

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
