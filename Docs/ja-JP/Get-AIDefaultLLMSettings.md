# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI での AI 操作に利用可能なすべてのデフォルト LLM 設定構成を取得します。

## Description

AI 操作に設定されているデフォルトの大規模言語モデル (LLM) 設定の完全なセットを取得します。結果は、クエリタイプ、モデル識別子、API エンドポイント、または API キーでフィルタリングできます。セッションベースおよび永続的なプリファレンスベースの取得をサポートし、セッション状態のクリアや、プリファレンスから直接読み取るために完全にバイパスするオプションも提供します。

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 設定を取得するためのLLMクエリのタイプ |
| `-Model` | String | — | — | Named | — | モデル識別子またはパターンで設定をフィルタリングする |
| `-ApiEndpoint` | String | — | — | Named | — | APIエンドポイントURLで設定をフィルタリングする |
| `-ApiKey` | String | — | — | Named | — | APIキーで設定をフィルタリングする |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | — | セッション設定をスキップし、設定またはデフォルトのみから取得する |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Coding クエリタイプで利用可能なすべてのデフォルト設定を取得します。

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
