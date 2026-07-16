# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | モデルに送信するクエリテキスト |
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
| `-ResponseFormat` | String | — | — | Named | — | {
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
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 関数定義の配列 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | ツールとして使用する PowerShell コマンド定義の配列 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | ユーザー確認が不要なツール機能 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 画像の詳細レベル |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-AudioTemperature` | Double | — | — | Named | — | 音声生成のランダム性を制御する温度パラメータ |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答のランダム性のための温度（オーディオチャット） |
| `-Language` | String | — | — | Named | — | オーディオチャットの言語コードまたは名前 |
| `-CpuThreads` | Int32 | — | — | Named | — | オーディオチャットに使用するCPUスレッド数 |
| `-SuppressRegex` | String | — | — | Named | — | オーディオチャットでの特定の出力を抑制する正規表現 |
| `-AudioContextSize` | Int32 | — | — | Named | — | オーディオチャット用のオーディオコンテキストサイズ |
| `-SilenceThreshold` | Double | — | — | Named | — | オーディオチャットの無音しきい値 |
| `-LengthPenalty` | Double | — | — | Named | — | オーディオチャット応答の長さペナルティ |
| `-EntropyThreshold` | Double | — | — | Named | — | オーディオチャットのエントロピーしきい値 |
| `-LogProbThreshold` | Double | — | — | Named | — | オーディオチャットの対数確率しきい値 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | オーディオチャットのスピーチしきい値なし |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 音声応答は行わないでください |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 音声思考を話さないでください |
| `-NoVOX` | SwitchParameter | — | — | Named | — | オーディオチャットのVOX（音声起動）を無効にする |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | オーディオチャットにデスクトップの音声キャプチャを使用する |
| `-NoContext` | SwitchParameter | — | — | Named | — | オーディオチャットのコンテキストを無効にする |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 音声チャットにビームサーチサンプリング戦略を使用する |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | あなたはJSONを出力するように設計された便利なアシスタントです。 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 思考プロセスを会話履歴から除外する |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | マークアップブロック応答のみを出力します |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | 指定されたタイプのマークアップブロックのみを出力します |
| `-ChatMode` | String | — | — | Named | — | チャットモードを有効にする |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 内部使用され、LLM呼び出し後にチャットモードを1回のみ起動するために使用されます。 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | ツールコールバック出力の最大文字数。この長さを超える出力は警告メッセージとともに切り詰められます。デフォルトは100000文字です。 |

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)
