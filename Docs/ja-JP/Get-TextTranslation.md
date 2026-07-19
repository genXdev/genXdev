# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> AIを使用してテキストを別の言語に翻訳します。

## Description

この関数は、AIモデルを使用して入力テキストを指定されたターゲット言語に翻訳します。パラメータを介して直接、パイプラインから、またはシステムクリップボードから入力を受け付けることができます。この関数は、翻訳中に書式とスタイルを保持します。

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | あなたはJSONを出力するように設計された便利なアシスタントです。 |
| `-Instructions` | String | — | — | 1 | — | 翻訳スタイルとコンテキストをガイドするAIモデルの追加指示 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 添付するファイルパスの配列 |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 画像の詳細レベル |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 関数定義の配列 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | ツールとして使用する PowerShell コマンド定義の配列 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 確認を必要としないコマンド名の配列 |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
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
| `-AudioTemperature` | Double | — | — | Named | — | オーディオ応答のランダム性のための温度（LLMに渡されます） |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答生成の温度（LLMに渡される） |
| `-Language` | String | — | — | Named | — | ja-JP |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用するCPUスレッド数（LLMに渡されます） |
| `-SuppressRegex` | String | — | — | Named | — | 出力を抑制する正規表現（LLMに渡される） |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理用のオーディオコンテキストサイズ（LLMに渡される） |
| `-SilenceThreshold` | Double | — | — | Named | — | 音声検出の無音閾値（LLMに渡される） |
| `-LengthPenalty` | Double | — | — | Named | — | 系列生成の長さペナルティ（LLMに渡されます） |
| `-EntropyThreshold` | Double | — | — | Named | — | 出力フィルタリングのエントロピー閾値（LLMに渡される） |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力フィルタリングのためのログ確率閾値（LLMに渡される） |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声検出のための発話しきい値なし（LLMに渡される） |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 音声出力を無効にする（LLMに渡す） |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 思考（LLMに渡される）の音声出力を無効にする |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX（音声起動）を無効にする（LLMに渡される） |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップオーディオキャプチャを使用（LLMに渡す） |
| `-NoContext` | SwitchParameter | — | — | Named | — | コンテキストの使用を無効にする（LLMに渡される） |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビームサーチサンプリング戦略を有効にする（LLMに渡される） |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | LLMに渡される応答のみを返す |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | {answer in ja-JP} |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | LLMに渡すためのマークアップブロックタイプのフィルター |
| `-NoCache` | SwitchParameter | — | — | Named | — | 翻訳キャッシュをスキップし、常にLLM APIを呼び出す |
| `-ClearCache` | SwitchParameter | — | — | Named | — | すべての言語の翻訳キャッシュ全体を消去する |

## Examples

### Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"

```powershell
Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"
```

### "Bonjour" | translate -Language "English"

```powershell
"Bonjour" | translate -Language "English"
```

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)
