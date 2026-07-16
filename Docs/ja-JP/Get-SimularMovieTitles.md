# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | 類似性を分析するための映画タイトルの配列 |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | LLMクエリの種類 |
| `-Model` | String | — | — | Named | — | AI操作で使用するモデル識別子またはパターン |
| `-ApiEndpoint` | String | — | — | Named | — | AI 操作用 API エンドポイント URL |
| `-ApiKey` | String | — | — | Named | — | 認証済みAI操作のためのAPIキー |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI操作のタイムアウト（秒単位） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-Temperature` | Double | — | — | Named | `-1` | 応答のランダム性のための温度 (0.0〜1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | 各結果に対してIMDB検索を開く |
| `-Language` | String | — | — | Named | — | IMDBの検索やブラウザセッション用の言語 |
| `-Monitor` | Int32 | — | — | Named | `-1` | ブラウザウィンドウ配置のためのモニターインデックスまたは名前 |
| `-Width` | Int32 | — | — | Named | `-1` | ブラウザウィンドウの幅（ピクセル単位） |
| `-Height` | Int32 | — | — | Named | `-1` | ブラウザウィンドウの高さ（ピクセル単位） |
| `-AcceptLang` | String | — | — | Named | — | ブラウザセッション用のAccept-Language HTTPヘッダー |
| `-Private` | SwitchParameter | — | — | Named | — | プライベート/シークレットモードでブラウザを開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome をブラウザセッションに使用してください |
| `-Chromium` | SwitchParameter | — | — | Named | — | ブラウザセッションにはChromiumを使用してください |
| `-Firefox` | SwitchParameter | — | — | Named | — | ブラウザセッションには Mozilla Firefox を使用してください |
| `-Left` | Int32 | — | — | Named | — | ブラウザウィンドウの左端の位置（ピクセル単位） |
| `-Right` | Int32 | — | — | Named | — | ブラウザウィンドウの右端の位置（ピクセル単位） |
| `-Bottom` | Int32 | — | — | Named | — | ブラウザウィンドウの下端位置（ピクセル単位） |
| `-Centered` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面中央に開く |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ブラウザを全画面モードで開く |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | アプリケーションモードでブラウザを開く（最小限のUI） |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | セッションのブラウザ拡張機能を無効にする |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ブラウザセッションでポップアップブロッカーを無効にする |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを開いた後に最前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを開いた後、最大化する |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | ブラウザを閉じた後に、以前のウィンドウにフォーカスを戻す |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 各IMDBの結果を新しいブラウザウィンドウで開く |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/?title= |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | URLをブラウザで開かずに返すだけ |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | ブラウザを開いた後、Escapeキーを送信する |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後もブラウザのキーボードフォーカスを維持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ブラウザにキーを送信するときはShift+Enterを使用してください |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ブラウザにキーを送信する間の遅延（ミリ秒） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 境界なしでブラウザウィンドウを開く |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 各結果に対してブラウザウィンドウを並べて開く |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-Instructions` | String | — | — | Named | — | AIモデルが文字列リストを生成する方法の説明 |
| `-Attachments` | String[] | — | — | Named | — | 添付するファイルパスの配列 |
| `-ImageDetail` | String | — | — | Named | — | 画像処理のための画像詳細レベル。 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | 処理中にAIモデルが呼び出すことができる関数定義の配列です。 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | AIが呼び出せるツールとして使用するPowerShellコマンド定義の配列。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 実行前に確認を必要としないコマンド名の配列 |
| `-AudioTemperature` | Double | — | — | Named | — | 音声生成のための温度 |
| `-TemperatureResponse` | Double | — | — | Named | — | 応答生成の温度。 |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用するCPUスレッド数。 |
| `-SuppressRegex` | String | — | — | Named | — | 特定の出力を抑制する正規表現。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 処理のためのオーディオコンテキストサイズ。 |
| `-SilenceThreshold` | Double | — | — | Named | — | 音声処理における無音閾値 |
| `-LengthPenalty` | Double | — | — | Named | — | 系列生成时的长度ペナルティ。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 出力フィルタリングのためのエントロピーしきい値。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 出力フィルタリングの対数確率しきい値。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音声検出のしきい値がありません。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 音声出力を無効にする。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 思考音声出力を無効にする。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX（音声起動）を無効にする。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | デスクトップのオーディオキャプチャを使用します。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | コンテキストの使用を無効にする。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ビームサーチ方式です。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 応答のみを返してください。 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 指定された場合、処理後に結果の文字列リストをシステムクリップボードにコピーします。 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | モデルの思考を出力に含めてください |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | モデルの思考を会話履歴に追加しないでください |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 申し訳ありませんが、前回の会話の内容が提供されていません。続行するために、会話の履歴や指示を再度お知らせください。 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI応答のテキスト読み上げを有効にする |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AIの思考応答に対してテキスト読み上げを有効にする |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | セッションキャッシュにセッションを保存しない |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AIモデルのデフォルトツールを有効にします。 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | # 情報検索

ユーザーが最も関連性の高いドキュメントを確実に見つけられるようにするために、検索結果を理解しやすく提示する方法を考えてみましょう。

## はじめに

情報検索の分野では、文書のランク付けや要約など、関連性の高い結果をユーザーに提供するための様々な技術が研究されています。

## 先行研究

これまでの研究では、tf-idfやBM25などの手法が文書のランク付けに有効であることが示されています。

## まとめ

情報検索の技術は進化し続けており、ユーザーエクスペリエンスの向上に貢献しています。 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | 特定のタイプのマークアップブロックをフィルタリングします。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ツールコールの最大コールバック長。 |

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
