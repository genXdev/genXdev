# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 評価すべきステートメント |
| `-Instructions` | String | — | — | 1 | `''` | AIモデルがステートメントを評価するための指示 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 添付するファイルパスの配列 |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 画像の詳細レベル |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 関数定義の配列 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | ツールとして使用する PowerShell コマンド定義の配列 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 確認を必要としないコマンド名の配列 |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 結果をクリップボードにコピー |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | モデルの思考を会話履歴に追加しないでください |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AIがデフォルトのツールと機能を使用することを許可する |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <p>こんにちは、世界！これはマークアップブロック内のテキストです。</p> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | 特定の種類のマークアップブロックをフィルタリングする |
| `-AudioTemperature` | Double | — | — | Named | — | 音声レスポンスのランダム性のための温度 |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答生成のための温度 |
| `-Language` | String | — | — | Named | — | 言語コードまたは応答の名前 |
| `-CpuThreads` | Int32 | — | — | Named | — | 処理に使用するCPUスレッド数 |
| `-SuppressRegex` | String | — | — | Named | — | 出力から抑制する正規表現 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理のためのオーディオコンテキストサイズ |
| `-SilenceThreshold` | Double | — | — | Named | — | 音声検出のための無音閾値 |
| `-LengthPenalty` | Double | — | — | Named | — | 系列生成の長さペナルティ |
| `-EntropyThreshold` | Double | — | — | Named | — | 出力フィルタリングのエントロピーしきい値 |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力フィルタリングのための対数確率しきい値 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声検出のスピーチしきい値なし |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 音声出力を無効にする |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 考えの音声出力を無効にする |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX（音声起動）を無効にする |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップオーディオキャプチャを入力に使用する |
| `-NoContext` | SwitchParameter | — | — | Named | — | クエリ内でコンテキストを使用しない |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビームサーチサンプリング戦略を使用する |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | モデルからの応答のみを返します |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)
