# Get-SpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> OpenAIのWhisper音声認識モデルを使用して、音声ファイルをテキストに変換します。

## Description

Whisper.NETライブラリを使用して音声ファイルを処理し、音声をテキストに変換します。このライブラリはOpenAIのWhisper自動音声認識（ASR）システムを実装しており、複数の言語、翻訳機能、およびさまざまな文字起こし品質設定をサポートしています。

## Syntax

```powershell
Get-SpeechToText [-Input] <Object> [-ModelFileDirectoryPath <string>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-NoSpeechThreshold <float>] [-Prompt <string>] [-SuppressRegex <string>] [-TokenTimestampsSumThreshold <float>] [-MaxTokensPerSegment <int>] [-AudioContextSize <int>] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-ModelType <GgmlType>] [-Passthru] [-WithTokenTimestamps] [-SplitOnWord] [-WithTranslate] [-WithProgress] [-DontSuppressBlank] [-SingleSegmentOnly] [-PrintSpecialTokens] [-NoContext] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | モデルファイルディレクトリへのパス |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | オーディオファイルのパス、FileInfoオブジェクト、またはWhisperがサポートする任意のオーディオ形式。 |
| `-LanguageIn` | String | — | — | Named | — | 検出する入力言語を設定します。デフォルトは'en'です。 |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 出力言語を設定します |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音声検出の温度 |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 温度上昇 |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 発声なし閾値 |
| `-Prompt` | String | — | — | Named | — | モデルに使用するプロンプト |
| `-SuppressRegex` | String | — | — | Named | — | 出力からトークンを抑制する正規表現 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | トークンタイムスタンプの合計しきい値、デフォルトは0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | セグメントあたりの最大トークン数 |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オーディオコンテキストのサイズ |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オーディオの最大再生時間 |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オーディオのオフセット |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最後のテキストトークンの最大数 |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最大セグメント長 |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | この瞬間からタイムスタンプを開始します |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 長さペナルティ |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | エントロピー閾値 |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 対数確率しきい値 |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | 使用するWhisperモデルタイプ。デフォルトはLargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 文字列ではなくオブジェクトを返します |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | トークンのタイムスタンプを含めるかどうか |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | 単語の境界で分割するかどうか |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | 出力を翻訳するかどうか |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | 進捗を表示するかどうか |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | 空行を抑制しないかどうか |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | 単一セグメントのみを使用するか |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | 特殊トークンを印刷するかどうか |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | コンテキストを使用しないでください |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | ビームサーチサンプリング戦略を使用する |

## Examples

### Example 1

```powershell
Get-SpeechToText -Input "C:\audio\recording.wav"
```

デフォルト設定を使用して音声ファイルをテキストに書き起こします。

### Example 2

```powershell
Get-ChildItem "C:\audio\*.wav" | Get-SpeechToText
```

ディレクトリ内のすべてのWAVファイルを書き起こします。

### Example 3

```powershell
Get-SpeechToText -Input "audio.mp3" -LanguageIn "es" -WithTranslate
```

スペイン語の音声を書き起こし、英語に翻訳します。

### Example 4

```powershell
Get-SpeechToText -Input "recording.wav" -Passthru -WithTokenTimestamps
```

精密なタイミング情報を含むSegmentDataオブジェクトを返します。

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
