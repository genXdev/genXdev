# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile, `transcribe

## Synopsis

> 音声ファイル、動画ファイル、または録音デバイスをテキストに書き起こします

## Description

Whisper AIモデルを使用して、音声ファイル、動画ファイル、または録音デバイスからテキストに文字起こしします。この関数は様々な音声および動画形式を処理し、文字起こしに適した形式に変換し、必要に応じて出力を別の言語に翻訳することもできます。SRT字幕形式の出力や、文字起こしの品質を微調整するための様々な音声処理パラメータをサポートしています。

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | 文字起こしする音声またはビデオファイルのパス。指定しない場合は、マイクから録音します。 |
| `-AudioDevice` | String | — | — | Named | — | オーディオデバイス名またはGUID（ワイルドカード対応、最初に一致したものを選択） |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | 翻訳する言語を設定します。 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | トークンタイムスタンプの合計しきい値、デフォルトは0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | セグメントあたりの最大トークン数 |
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
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
これはテストです

2
00:00:05,000 --> 00:00:08,000
このツールは動画に字幕を追加します

3
00:00:09,000 --> 00:00:12,000
簡単に使えます

4
00:00:13,000 --> 00:00:16,000
ただテキストを入力するだけです |
| `-PassThru` | SwitchParameter | — | — | Named | — | 文字列ではなくオブジェクトを返します |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップオーディオキャプチャを使用するか、マイク入力を使用するか |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | デスクトップと録音デバイスの両方を使用する |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |
| `-VOX` | SwitchParameter | — | — | Named | — | 無音検出を使用して録音を自動停止する |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)
