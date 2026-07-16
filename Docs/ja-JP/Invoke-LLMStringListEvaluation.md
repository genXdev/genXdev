# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `getlist, `getstring

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 分析して文字列を抽出するテキスト |
| `-Instructions` | String | — | — | 1 | `''` | AIモデルが文字列リストを生成する方法の説明 |
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
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 結果をクリップボードにコピー |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | モデルの思考を会話履歴に追加しないでください |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AIモデルのデフォルトツールを有効にする |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | # 情報検索

ユーザーが最も関連性の高いドキュメントを確実に見つけられるようにするために、検索結果を理解しやすく提示する方法を考えてみましょう。

## はじめに

情報検索の分野では、文書のランク付けや要約など、関連性の高い結果をユーザーに提供するための様々な技術が研究されています。

## 先行研究

これまでの研究では、tf-idfやBM25などの手法が文書のランク付けに有効であることが示されています。

## まとめ

情報検索の技術は進化し続けており、ユーザーエクスペリエンスの向上に貢献しています。 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | 特定のタイプのマークアップブロックをフィルタリングします。 |
| `-AudioTemperature` | Double | — | — | Named | — | オーディオ応答のランダム性のための温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | テキスト応答のランダム性のための温度。 |
| `-Language` | String | — | — | Named | — | 日本語 |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用するCPUスレッド数。 |
| `-SuppressRegex` | String | — | — | Named | — | 特定の出力を抑制する正規表現。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理のためのオーディオコンテキストサイズ。 |
| `-SilenceThreshold` | Double | — | — | Named | — | オーディオ検出のための無音閾値。 |
| `-LengthPenalty` | Double | — | — | Named | — | 系列生成时的长度ペナルティ。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 出力フィルタリングのためのエントロピーしきい値。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力フィルタリングの対数確率しきい値。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声検出のしきい値がありません。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 音声出力を無効にする。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 思考の音声出力を無効にする。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX（音声起動）を無効にする。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップのオーディオキャプチャを使用します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | コンテキストの使用を無効にする。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビームサーチ方式です。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 応答のみを返してください。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツールコールの最大コールバック長。 |

## Outputs

- `String[]`

## Related Links

- [Invoke-LLMStringListEvaluation on GitHub](https://github.com/genXdev/genXdev)
