# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | LLMクエリの種類 |
| `-Model` | String | — | — | 1 | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | 7 | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | 8 | — | 認証済みAI操作のためのAPIキー |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | エンドポイントがjson_schema応答形式をサポートしていないかどうか |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | エンドポイントが画像アップロード機能をサポートしていないかどうか |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | エンドポイントがツール呼び出し機能をサポートしていないかどうか |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
