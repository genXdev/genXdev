# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI での AI 操作の LLM 設定を取得します。

## Description

この関数は、GenXdev.AIモジュールが様々なAI操作に使用するLLM（大規模言語モデル）設定を取得します。設定は、セッション変数、永続的な設定、またはデフォルト設定JSONファイルから、この優先順位で取得されます。この関数は、利用可能なシステムメモリリソースに基づいた自動設定選択をサポートしています。

メモリ選択戦略は、指定されたGpuおよびCpuパラメータに基づいて自動的に決定されます：
- GpuとCpuの両方のパラメータが指定された場合：CPU + GPUメモリの合計を使用
- Gpuパラメータのみが指定された場合：GPUメモリを優先（システムRAMをフォールバックとして使用）
- Cpuパラメータのみが指定された場合：システムRAMのみを使用
- どちらのパラメータも指定されなかった場合：CPU + GPUメモリの合計を使用（デフォルト）

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

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

SimpleIntelligence クエリタイプ（デフォルト）のLLM設定を取得します。

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

コーディングクエリタイプのLLM設定を取得します。

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

セッション設定を無視し、プリファレンスまたはデフォルトのみからLLM設定を取得します。

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
