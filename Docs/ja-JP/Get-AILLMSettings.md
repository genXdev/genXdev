# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI の AI 操作のための LLM 設定を取得します。

## Description

この関数は、GenXdev.AIモジュールがさまざまなAI操作で使用するLLM（大規模言語モデル）設定を取得します。設定は、セッション変数、永続的な設定、またはデフォルト設定のJSONファイルから、この優先順位で取得されます。この関数は、使用可能なシステムメモリリソースに基づく自動設定選択をサポートしています。

メモリ選択戦略は、指定されたGpuおよびCpuパラメータに基づいて自動的に決定されます：
- GpuパラメータとCpuパラメータの両方が指定された場合：CPU + GPUメモリの組み合わせを使用
- Gpuパラメータのみが指定された場合：GPUメモリを優先（システムRAMをフォールバックとして使用）
- Cpuパラメータのみが指定された場合：システムRAMのみを使用
- どちらのパラメータも指定されていない場合：CPU + GPUメモリの組み合わせを使用（デフォルト）

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 設定を取得するLLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作に使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作のAPIエンドポイントURL |
| `-ApiKey` | String | — | — | Named | — | 認証されたAI操作のためのAPIキー |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | エンドポイントがjson_schema応答形式をサポートしていないかどうか |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | エンドポイントが画像アップロード機能をサポートしていないかどうか |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | エンドポイントがツール呼び出し機能をサポートしていないかどうか |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定のためにセッションに保存された代替設定を使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッション設定（グローバル変数）をクリアしてから取得する |
| `-PreferencesDatabasePath` | String | — | — | Named | — | ユーザー設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | — | セッション設定をスキップして、設定またはデフォルトからのみ取得する |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

SimpleIntelligence クエリタイプ (デフォルト) の LLM 設定を取得します。

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

コーディングクエリタイプのLLM設定を取得します。

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

セッション設定を無視して、ユーザー設定またはデフォルトからのみLLM設定を取得します。

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> 設定を取得するLLMクエリの種類

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
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
### `-NoSupportForJsonSchema`

> エンドポイントがjson_schema応答形式をサポートしていないかどうか

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> エンドポイントが画像アップロード機能をサポートしていないかどうか

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> エンドポイントがツール呼び出し機能をサポートしていないかどうか

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

> 言語、画像コレクションなどのAI設定のためにセッションに保存された代替設定を使用する

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

> セッション設定（グローバル変数）をクリアしてから取得する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-SkipSession`

> セッション設定をスキップして、設定またはデフォルトからのみ取得する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-DeepLinkImageFile.md)
