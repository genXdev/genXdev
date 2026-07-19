# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> 外交的または婉曲的な表現を、直接的で明確かつ率直な表現に変換します。

## Description

この関数は、外交的な言葉遣いを受け取り、その背後にある真意を明らかにするために翻訳します。婉曲表現を直接的な表現に変換し、コミュニケーションを明確で理解しやすくするためにAI言語モデルを使用します。この関数は特に、政治的な発言、ビジネスコミュニケーション、または外交的な言葉で真意が隠されている可能性のあるテキストを分析するのに役立ちます。

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 外交辞令转译 |
| `-Instructions` | String | — | — | 1 | `''` | AIモデルへの追加指示 |
| `-Temperature` | Double | — | — | Named | `0.0` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 変換されたテキストをクリップボードにコピーする |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-Attachments` | Object[] | — | — | Named | — | AI 操作に含める添付ファイル。 |
| `-ImageDetail` | String | — | — | Named | — | AI 処理用の画像詳細レベル。 |
| `-Functions` | Object[] | — | — | Named | — | AIモデルに公開する関数。 |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | AIモデルに公開するコマンドレット。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 確認が不要なツール関数名 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | AI履歴に思考を追加しないでください。 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "変換されたテキスト出力"
        }
      },
      "type": "object"
    }
  }
} |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI処理中に思考を声に出して話す。 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | この操作のセッションキャッシュを無効にします。 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI操作でのデフォルトツールの使用を許可する。 |
| `-AudioTemperature` | Double | — | — | Named | — | AI音声生成用のオーディオ温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | AI応答生成のための温度。 |
| `-CpuThreads` | Int32 | — | — | Named | — | AI 操作に使用する CPU スレッド数。 |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | AI音声処理のためのオーディオコンテキストサイズ |
| `-SilenceThreshold` | Double | — | — | Named | — | AI音声処理の無音閾値 |
| `-LengthPenalty` | Double | — | — | Named | — | AIシーケンス生成に対する長さペナルティ。 |
| `-EntropyThreshold` | Double | — | — | Named | — | AI出力のエントロピーしきい値。 |
| `-LogProbThreshold` | Double | — | — | Named | — | AI出力の対数確率のしきい値。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | AI音声処理のための発話閾値なし。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | AIの出力は話さないでください。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | AIの考えを話さないでください。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | AI音声出力のVOXを無効にする。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | AIオーディオにデスクトップオーディオキャプチャを使用します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | AI操作にはコンテキストを使用しないでください。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | AIにビームサーチサンプリング戦略を使用します。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | AIからの応答のみを返してください。 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | AIからのマークアップブロックのみを出力してください。 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | AI出力におけるマークアップブロックタイプのフィルタリング。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツールコールの最大コールバック長。 |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)
