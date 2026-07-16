# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
