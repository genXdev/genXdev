# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | 同様の構造を維持するために、テキストを解析して誤謬を見つける必要があります。 |
| `-Instructions` | String | — | — | 1 | `''` | AIモデルが文字列リストを生成する方法の説明 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 添付するファイルパスの配列 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 関数定義の配列 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 画像の詳細レベル |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 確認を必要としないコマンド名の配列 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | ツールとして使用する PowerShell コマンド定義の配列 |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | 各結果に対してIMDB検索を開く |
| `-AudioTemperature` | Double | — | — | Named | — | オーディオ生成の温度を制御します。 |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答生成の温度を制御します。 |
| `-CpuThreads` | Int32 | — | — | Named | — | 処理に使用するCPUスレッドの数。 |
| `-SuppressRegex` | String | — | — | Named | — | 特定の出力を抑制する正規表現。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理のためのオーディオコンテキストサイズ。 |
| `-SilenceThreshold` | Double | — | — | Named | — | オーディオで無音を検出するためのしきい値。 |
| `-LengthPenalty` | Double | — | — | Named | — | より長い応答に適用されるペナルティ。 |
| `-EntropyThreshold` | Double | — | — | Named | — | レスポンス生成におけるエントロピーのしきい値。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力の対数確率しきい値。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声の無音検出のしきい値。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 応答の発話を防止します。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | モデルの思考が話されるのを防ぎます。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX（音声起動）を無効にします。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップオーディオキャプチャを入力に使用します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | リクエストのコンテキストを無効にします。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビームサーチ方式です。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | あなたはJSONを出力するように設計された便利なアシスタントです。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツールコールの最大コールバック長。 |

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)
