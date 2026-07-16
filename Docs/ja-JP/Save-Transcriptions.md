# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | メディアファイルを検索するディレクトリパス |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | — | 翻訳する言語を設定します。 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | トークンタイムスタンプの合計しきい値、デフォルトは0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | セグメントあたりの最大トークン数 |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | 録音を自動停止するまでの最大無音時間 |
| `-SilenceThreshold` | Int32 | — | — | Named | — | 無音検出閾値（0..32767 デフォルトは30） |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 使用するCPUスレッド数、デフォルトは0（自動） |
| `-Temperature` | Single | — | — | Named | `0.5` | 音声認識の温度 |
| `-TemperatureInc` | Single | — | — | Named | — | 温度上昇 |
| `-Prompt` | String | — | — | Named | — | モデルに使用するプロンプト |
| `-SuppressRegex` | String | — | — | Named | `$null` | 出力からトークンを抑制する正規表現 |
| `-AudioContextSize` | Int32 | — | — | Named | — | オーディオコンテキストのサイズ |
| `-MaxDuration` | Object | — | — | Named | — | オーディオの最大再生時間 |
| `-Offset` | Object | — | — | Named | — | オーディオのオフセット |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | 最後のテキストトークンの最大数 |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | 最大セグメント長 |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | この瞬間からタイムスタンプを開始します |
| `-LengthPenalty` | Single | — | — | Named | — | 長さペナルティ |
| `-EntropyThreshold` | Single | — | — | Named | — | エントロピー閾値 |
| `-LogProbThreshold` | Single | — | — | Named | — | 対数確率しきい値 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 発声なし閾値 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | 出力にトークンのタイムスタンプを含めるかどうか |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | 単語の境界で分割するかどうか |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | 無音を無視するかどうか（タイムスタンプが乱れます） |
| `-WithProgress` | SwitchParameter | — | — | Named | — | 進捗を表示するかどうか |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | 空行を抑制しないかどうか |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | 単一セグメントのみを使用するか |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | 特殊トークンを印刷するかどうか |
| `-NoContext` | SwitchParameter | — | — | Named | — | コンテキストを使用しないでください |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビームサーチサンプリング戦略を使用する |
| `-ModelType` | String | — | — | Named | — | 使用するWhisperモデルタイプ。デフォルトはLargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | 文字列ではなくオブジェクトを返します |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップオーディオキャプチャを使用するか、マイク入力を使用するか |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Related Links

- [Save-Transcriptions on GitHub](https://github.com/genXdev/genXdev)
