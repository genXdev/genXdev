# Invoke-LLMTextTransformation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `spellcheck

## Synopsis

> AIを活用した処理でテキストを変換します。

## Description

この関数は、AIモデルを使用して入力テキストを処理し、スペルチェック、絵文字の追加、または指示によって指定されたその他のテキスト強調など、さまざまな変換を実行します。パラメータ、パイプライン、またはシステムクリップボードから直接入力を受け付けることができます。

## Syntax

```powershell
Invoke-LLMTextTransformation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | あなたはJSONを出力するように設計された役立つアシスタントです。 |
| `-Instructions` | String | — | — | 1 | `('Check and correct any spelling or grammar ' +
            'errors in the text. Return the corrected text without any ' +
            'additional comments or explanations.')` | テキストを変換するためのAIモデルへの指示 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 添付するファイルパスの配列 |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 画像の詳細レベル |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 関数定義の配列 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | ツールとして使用する PowerShell コマンド定義の配列 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 確認を必要としないコマンド名の配列 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 拡張されたテキストをクリップボードにコピーします |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | 処理中のデフォルトAIツールの使用を許可する |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-AudioTemperature` | Double | — | — | Named | — | オーディオ応答のランダム性のための温度（LLMQueryに渡される） |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答生成の温度（LLMQueryに渡される） |
| `-Language` | String | — | — | Named | — | 処理用の言語コードまたは名称（LLMQueryに渡されます） |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用するCPUスレッド数（LLMQueryに渡されます） |
| `-SuppressRegex` | String | — | — | Named | — | 出力を抑制する正規表現（LLMQueryに渡す） |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理のための音声コンテキストサイズ (LLMQueryに渡される) |
| `-SilenceThreshold` | Double | — | — | Named | — | 音声検出の無音閾値（LLMQueryに渡されます） |
| `-LengthPenalty` | Double | — | — | Named | — | シーケンス生成の長さペナルティ（LLMQueryに渡される） |
| `-EntropyThreshold` | Double | — | — | Named | — | 出力フィルタリングのエントロピーしきい値（LLMQueryに渡されます） |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力フィルタリングの対数確率しきい値（LLMQueryに渡されます） |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声検出のスピーチしきい値なし（LLMQueryに渡されます） |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 音声出力を無効にする（LLMQueryに渡されます） |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 思考（LLMQueryに渡される）に対する音声出力を無効にする |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX（音声起動）を無効にする（LLMQueryに渡されます） |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップオーディオキャプチャを使用（LLMQueryに渡される） |
| `-NoContext` | SwitchParameter | — | — | Named | — | コンテキスト使用を無効にする (LLMQueryに渡される) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビーム検索サンプリング戦略を有効にする（LLMQueryに渡される） |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | LLMクエリに渡された応答のみを返す |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ```
<LLMQuery>
  <Query>Translate the following English text to Japanese: "Hello, how are you?"</Query>
  <Response>こんにちは、お元気ですか？</Response>
</LLMQuery>
``` |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | フィルター用マークアップブロックタイプ（LLMQueryに渡される） |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 最大ツールコールバック長（LLMQueryに渡される） |

## Examples

### Invoke-LLMTextTransformation -Text "Hello, hwo are you todey?" `     -Instructions "Fix spelling errors" -SetClipboard

```powershell
Invoke-LLMTextTransformation -Text "Hello, hwo are you todey?" `
    -Instructions "Fix spelling errors" -SetClipboard
```

### "Time to celerbate!" | Invoke-LLMTextTransformation `     -Instructions "Add celebratory emoticons"

```powershell
"Time to celerbate!" | Invoke-LLMTextTransformation `
    -Instructions "Add celebratory emoticons"
```

### spellcheck "This is a sentance with erors"

```powershell
spellcheck "This is a sentance with erors"
```

## Outputs

- `String`

## Related Links

- [Invoke-LLMTextTransformation on GitHub](https://github.com/genXdev/genXdev)
