# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> AIビジョン機能を使用して画像コンテンツを分析します

## Description

AIの視覚機能を使用して画像を処理し、内容を分析して画像に関するクエリに回答します。この関数は、応答のランダム性を制御する温度パラメータや出力長を制限するトークン制限など、さまざまな分析パラメータをサポートしています。

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | 画像を分析するためのクエリ文字列 |
| `-ImagePath` | String | ✅ | — | 1 | — | 分析用画像ファイルへのパス |
| `-Instructions` | String | — | — | 2 | — | モデル用のシステム指示

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
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | 画像の詳細レベル |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-Functions` | String[] | — | — | Named | — | AI操作で使用する関数を指定します。 |
| `-ExposedCmdLets` | String[] | — | — | Named | — | AI 操作で公開されるコマンドレットを指定します。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 確認不要なツール関数名を指定します。 |
| `-AudioTemperature` | Double | — | — | Named | — | オーディオ応答生成の温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答生成のための温度。 |
| `-Language` | String | — | — | Named | — | 生成された説明とキーワードの言語 |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用するCPUスレッド数。 |
| `-SuppressRegex` | String | — | — | Named | — | 出力を抑制する正規表現。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理のためのオーディオコンテキストサイズ。 |
| `-SilenceThreshold` | Double | — | — | Named | — | 音声処理における無音閾値 |
| `-LengthPenalty` | Double | — | — | Named | — | 系列生成时的长度ペナルティ。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 出力フィルタリングのためのエントロピーしきい値。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力フィルタリングの対数確率しきい値。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声検出のしきい値がありません。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 指定された場合、出力を話さないでください。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | もし指定されている場合は、モデルの思考を話さないでください。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 指定された場合、VOXを無効にします。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 指定されている場合、デスクトップオーディオキャプチャを使用します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 指定された場合、コンテキストの使用を無効にします。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 指定されている場合は、ビームサーチサンプリング戦略を使用します。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 指定された場合のみ、レスポンスを返します。 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 指定されている場合、履歴に思考を追加しないでください。 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ```json
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
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
}
``` |
| `-Speak` | SwitchParameter | — | — | Named | — | 出力を話す。 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | モデルの考えを話す。 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 出力はマークアップブロックのみです。 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | マークアップブロックタイプでフィルタリング。 |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 指定された場合、一度だけチャットします。 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュを無効にする。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツールコールの最大コールバック長。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | ImageSharp パッケージのインストール設定がされていても、同意プロンプトを強制的に表示します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ImageSharp パッケージのサードパーティ製ソフトウェアのインストールを自動的に同意し、永続フラグを設定します。 |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analyzes an image with specific temperature and token limits.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

エイリアスと位置パラメータを使用したシンプルな画像解析。

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)
