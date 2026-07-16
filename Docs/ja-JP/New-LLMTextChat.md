# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | モデルに送信するクエリテキスト *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | モデル用のシステム指示

===== 重要なJSON出力要件 =====
有効なJSONのみで応答しなければなりません。それ以外のテキストは一切許可されません。
JSONの前後に説明、コメント、テキストを入れないでください。
応答は、このスキーマに完全に準拠した解析可能なJSONでなければなりません。
{
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
}

応答例: {"response":"実際の応答をここに"}
===== 要件終了 ===== |
| `-Attachments` | String[] | — | — | 2 | `@()` | 添付するファイルパスの配列 |
| `-Temperature` | Double | — | — | 3 | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 画像の詳細レベル |
| `-ResponseFormat` | String | — | — | Named | `$null` | {
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
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | ツールとして使用する PowerShell コマンド定義の配列 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | 指定されたタイプのマークアップブロックのみを出力します |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | マークアップブロック応答のみを出力します |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 内部使用され、LLM呼び出し後にチャットモードを1回のみ起動するために使用されます。 *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 確認不要となるツール関数の名前 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツールコールバック応答の最大長 |
| `-AudioTemperature` | Object | — | — | Named | — | オーディオ生成の温度 |
| `-TemperatureResponse` | Object | — | — | Named | — | 応答生成のための温度 |
| `-Language` | Object | — | — | Named | — | モデルまたは出力の言語 |
| `-CpuThreads` | Object | — | — | Named | — | 使用するCPUスレッド数 |
| `-SuppressRegex` | Object | — | — | Named | — | 出力を抑制する正規表現 |
| `-AudioContextSize` | Object | — | — | Named | — | 処理のためのオーディオコンテキストサイズ |
| `-SilenceThreshold` | Object | — | — | Named | — | オーディオ処理の無音閾値 |
| `-LengthPenalty` | Object | — | — | Named | — | 系列生成の長さペナルティ |
| `-EntropyThreshold` | Object | — | — | Named | — | 出力フィルタリングのエントロピーしきい値 |
| `-LogProbThreshold` | Object | — | — | Named | — | 出力フィルタリングのための対数確率しきい値 |
| `-NoSpeechThreshold` | Object | — | — | Named | — | 音声検出のスピーチしきい値なし |
| `-DontSpeak` | Object | — | — | Named | — | 音声出力を無効にする |
| `-DontSpeakThoughts` | Object | — | — | Named | — | 考えの音声出力を無効にする |
| `-NoVOX` | Object | — | — | Named | — | VOX（音声起動）を無効にする |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | デスクトップオーディオキャプチャを使用 |
| `-NoContext` | Object | — | — | Named | — | コンテキストの使用を無効にする |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | ビームサーチサンプリング戦略を使用する |
| `-OnlyResponses` | Object | — | — | Named | — | 応答のみを返してください |

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)
