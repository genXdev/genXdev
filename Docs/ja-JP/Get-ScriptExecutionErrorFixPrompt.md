# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | 実行してエラーを分析するスクリプト |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 関数定義の配列 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | ツールとして使用する PowerShell コマンド定義の配列 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 確認を必要としないコマンド名の配列 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-Attachments` | Object | — | — | Named | — | LLMクエリに含める添付ファイル。 |
| `-ImageDetail` | Object | — | — | Named | — | LLM クエリ用の画像詳細レベル。 |
| `-TTLSeconds` | Object | — | — | Named | — | LLM クエリの有効期限（秒単位） |
| `-IncludeThoughts` | Object | — | — | Named | — | {
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
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | Markdown形式のブロックタイプをLLMレスポンスからフィルタリングしてください。 |
| `-ChatOnce` | Object | — | — | Named | — | {
  "role": "user",
  "content": "質問があります。"
} |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | LLMクエリの最大ツールコールバック長。 |
| `-AudioTemperature` | Object | — | — | Named | — | 音声生成のための温度 |
| `-TemperatureResponse` | Object | — | — | Named | — | 応答生成の温度。 |
| `-Language` | Object | — | — | Named | — | LLMクエリの言語。 |
| `-CpuThreads` | Object | — | — | Named | — | 使用するCPUスレッド数。 |
| `-SuppressRegex` | Object | — | — | Named | — | 出力を抑制する正規表現。 |
| `-AudioContextSize` | Object | — | — | Named | — | LLMクエリのオーディオコンテキストサイズ。 |
| `-SilenceThreshold` | Object | — | — | Named | — | 音声処理における無音閾値 |
| `-LengthPenalty` | Object | — | — | Named | — | LLM出力に対する長さペナルティ。 |
| `-EntropyThreshold` | Object | — | — | Named | — | LLM 出力のエントロピーしきい値。 |
| `-LogProbThreshold` | Object | — | — | Named | — | LLM 出力の対数確率しきい値 |
| `-NoSpeechThreshold` | Object | — | — | Named | — | オーディオ処理に発話しきい値はありません。 |
| `-DontSpeak` | Object | — | — | Named | — | 音声出力を話さないでください。 |
| `-DontSpeakThoughts` | Object | — | — | Named | — | <div class="home-title">
  <h1>
    <span class="home-h4">新设</span>
    <span class="home-span">电子</span>
    <span class="home-span2">科技</span>
  </h1>
  <h3 class="home-h3">开启智能生活新篇章</h3>
  <p class="home-p">
    <span class="home-title-em">新设电子科技</span>自成立以来，始终致力于将创意与技术完美结合，持续深耕智能生活领域。
  </p>
  <div class="button-container">
    <div class="button1"><a href="#">立即探索</a></div>
    <div class="button2"><a href="#">了解更多</a></div>
  </div>
</div> |
| `-NoVOX` | Object | — | — | Named | — | VOXを無効にします。 |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | デスクトップのオーディオキャプチャを使用します。 |
| `-NoContext` | Object | — | — | Named | — | LLMクエリにコンテキストを使用しないでください。 |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | ビームサーチ方式です。 |
| `-OnlyResponses` | Object | — | — | Named | — | LLMのみからの応答を返します。 |

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)
