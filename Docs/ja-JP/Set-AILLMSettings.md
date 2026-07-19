# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI における AI 操作の LLM 設定を設定します。

## Description

これは [int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'エンドポイントがjson_schema応答形式をサポートしていないかどうか'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'エンドポイントが画像アップロード機能をサポートしていないかどうか'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'エンドポイントがツール呼び出し機能をサポートしていないかどうか'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('設定を永続化せずに現在のセッションのみに保存する')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('AI設定用にセッションに保存された代替設定をクリアする')
        )]
        [switch] $ClearSession, は、GenXdev.AIモジュールが様々なAI操作に使用するLLM（大規模言語モデル）設定を保存します。設定は、永続的にプリファレンスに保存されるか（デフォルト）、現在のセッションのみに保存されるか（-SessionOnly使用時）、またはセッションからクリアされます（-ClearSession使用時）。この関数は、セッション設定をクリアする場合を除き、少なくとも1つの設定パラメータが指定されていることを検証します。

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

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

コーディングクエリタイプのLLM設定を設定に永続的に保存します。

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

SimpleIntelligenceのLLM設定を現在のセッションのみに設定します。

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

画像クエリタイプのセッションLLM設定を、永続的な設定に影響を与えずにクリアします。

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

位置パラメータを使用して、Coding クエリタイプの LLM 設定を設定します。

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
