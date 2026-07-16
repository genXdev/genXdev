# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 設定を取得するためのLLMクエリのタイプ |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | エンドポイントがjson_schema応答形式をサポートしていないかどうか |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | エンドポイントが画像アップロード機能をサポートしていないかどうか |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | エンドポイントがツール呼び出し機能をサポートしていないかどうか |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | — | セッション設定をスキップし、設定またはデフォルトのみから取得する |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
