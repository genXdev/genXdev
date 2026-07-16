# Receive-RealTimeSpeechToText

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | モデルファイルへのパス |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | デスクトップ音声キャプチャをマイクの代わりに使用するかどうか |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | デスクトップ音声のキャプチャと録音デバイスを同時に使用するかどうか |
| `-AudioDevice` | String | — | — | Named | — | デスクトップと録音デバイスの両方を使用する |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 文字列ではなくオブジェクトを返します |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | トークンのタイムスタンプを含めるかどうか |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | トークンタイムスタンプの合計しきい値、デフォルトは0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | 単語の境界で分割するかどうか |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | セグメントあたりの最大トークン数 |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | 無音を無視するかどうか（タイムスタンプが乱れます） |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 録音を自動停止するまでの最大無音時間 |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 無音検出閾値（0..32767 デフォルトは30） |
| `-LanguageIn` | String | — | — | Named | — | 検出する入力言語を設定します。デフォルトは'en'です。 |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 出力言語を設定します |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音声検出の温度 |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 温度上昇 |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | 出力を翻訳するかどうか |
| `-Prompt` | String | — | — | Named | — | モデルに使用するプロンプト |
| `-SuppressRegex` | String | — | — | Named | — | 出力からトークンを抑制する正規表現 |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | 進捗を表示するかどうか |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オーディオコンテキストのサイズ |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | 空行を抑制しないかどうか |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オーディオの最大再生時間 |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オーディオのオフセット |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最後のテキストトークンの最大数 |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | 単一セグメントのみを使用するか |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | 特殊トークンを印刷するかどうか |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最大セグメント長 |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | この瞬間からタイムスタンプを開始します |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 長さペナルティ |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | エントロピー閾値 |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 対数確率しきい値 |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 発声なし閾値 |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | コンテキストを使用しないでください |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | ビームサーチサンプリング戦略を使用する |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | 使用するWhisperモデルの種類。デフォルトはSmallです。 |

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
