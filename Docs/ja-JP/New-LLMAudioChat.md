# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> LLMモデルとのインタラクティブな音声チャットセッションを作成します。

## Description

言語モデルとの音声ベースの会話を開始し、音声入力と出力をサポートします。この関数は、音声録音、文字起こし、モデルクエリ、テキスト読み上げ応答を処理します。複数の言語モデルをサポートし、ウィンドウ管理、GPUアクセラレーション、高度な音声処理機能を含むさまざまな構成オプションを提供します。

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | モデルに送信する初期クエリテキスト |
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
| `-ModelType` | String | — | — | Named | `'SmallEn'` | 使用するWhisperモデルタイプ。デフォルトはLargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | 音声入力認識の温度（0.0～1.0） |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | 応答のランダム性を制御するための温度パラメータ。 |
| `-LanguageIn` | String | — | — | Named | — | 検出する言語を設定します |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 使用するCPUスレッド数、デフォルトは0（自動） |
| `-SuppressRegex` | String | — | — | Named | `$null` | 出力からトークンを抑制する正規表現 |
| `-AudioContextSize` | Int32 | — | — | Named | — | オーディオコンテキストのサイズ |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | 無音検出閾値（0..32767 デフォルトは30） |
| `-LengthPenalty` | Single | — | — | Named | — | 長さペナルティ |
| `-EntropyThreshold` | Single | — | — | Named | — | エントロピー閾値 |
| `-LogProbThreshold` | Single | — | — | Named | — | 対数確率しきい値 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 発声なし閾値 |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ImageDetail` | String | — | — | Named | `'low'` | 画像の詳細レベル |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
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
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | 指定されたタイプのマークアップブロックのみを出力します |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | ツールとして使用する PowerShell コマンド定義の配列 |
| `-Functions` | ScriptBlock[] | — | — | Named | — | LLMに公開するツール関数のScriptBlock配列（Invoke-LLMQueryに透過的） |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Invoke-LLMQuery に直接渡すことができるツール関数名の配列（確認不要） |
| `-ChatMode` | String | — | — | Named | — | LLMクエリのチャットモード（Invoke-LLMQueryへのパススルー） |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツール呼び出しの最大コールバック長（Invoke-LLMQueryにパススルー） |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを無効にする |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答のテキスト読み上げを無効にする |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 録音を自動停止するために無音検出を使用しないでください。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップオーディオキャプチャを使用するか、マイク入力を使用するか |
| `-AudioDevice` | String | — | — | Named | — | オーディオデバイス名またはGUID（ワイルドカード対応、最初に一致したものを選択） |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | デスクトップと録音デバイスの両方を使用する |
| `-NoContext` | SwitchParameter | — | — | Named | — | コンテキストを使用しないでください |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビームサーチサンプリング戦略を使用する |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 出力内の認識テキストを抑制するかどうか |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | マークアップブロック応答のみを出力します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)
