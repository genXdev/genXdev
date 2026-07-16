# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | 検索するファイル名またはパターン。デフォルトは '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 利用可能なすべてのドライブを検索 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | サブディレクトリに再帰しない |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ディレクトリ走査時にシンボリックリンクとジャンクションをたどります。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 相対検索でツリーを上方向に検索し続ける最大再帰深度。項目が見つからない場合、0は無効を意味します。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最大サイズ（バイト単位）。0は無制限を意味します。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最小サイズ（バイト単位）。0の場合は最小値なし。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | この日時（UTC）以降に変更されたファイルのみを含めてください。 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | この日時（UTC）より前に変更されたファイルのみを含めてください。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | スキップするファイル属性（例：システム、隠しファイル、なし）。 |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | パイプライン入力から検索するファイル名またはパターン。デフォルトは"*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | メディアファイルを保存するプレイリストのパス。指定しない場合、プレイリストは一時ディレクトリに保存されます。 |
| `-Width` | Int32 | — | — | 1 | `-1` | ウィンドウの初期幅 |
| `-Height` | Int32 | — | — | 2 | `-1` | ウィンドウの初期高さ |
| `-X` | Int32 | — | — | 3 | `-999999` | ウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | 4 | `-999999` | ウィンドウの初期Y位置 |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | VLC プレイヤー ウィンドウに送信するキーストロークについては、コマンドレット GenXdev\Send-Key のドキュメントを参照してください |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ディレクトリタスクの最大並列度 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | オプション: キャンセルタイムアウト（秒） |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | VLCにキーを送信する際は、制御文字と修飾キーをエスケープしてください |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | VLCにキーを送るときは、Enterキーの代わりにShift+Enterを使用してください |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | VLCにキーを送信する際の、異なる入力文字列間の遅延（ミリ秒単位） |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後、VLCウィンドウにキーボードフォーカスを保持する |
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用するモニター、0 = デフォルト、-1 は破棄 |
| `-AspectRatio` | String | — | — | Named | — | ソースアスペクト比 |
| `-Crop` | String | — | — | Named | — | ビデオトリミング |
| `-SubtitleFile` | String | — | — | Named | — | 字幕ファイルを使用する |
| `-SubtitleScale` | Int32 | — | — | Named | — | 字幕テキスト拡大率 |
| `-SubtitleLanguage` | String | — | — | Named | — | 字幕言語 |
| `-AudioLanguage` | String | — | — | Named | — | オーディオ言語 |
| `-PreferredAudioLanguage` | String | — | — | Named | — | 優先音声言語 |
| `-HttpProxy` | String | — | — | Named | — | HTTPプロキシ |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP プロキシパスワード |
| `-VerbosityLevel` | Int32 | — | — | Named | — | 冗長レベル |
| `-SubdirectoryBehavior` | String | — | — | Named | — | サブディレクトリの動作 |
| `-IgnoredExtensions` | String | — | — | Named | — | 無視された拡張機能 |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | VLC実行ファイルへのパス |
| `-ReplayGainMode` | String | — | — | Named | — | リプレイゲインモード |
| `-ReplayGainPreamp` | Single | — | — | Named | — | リプレイゲインプリアンプ |
| `-ForceDolbySurround` | String | — | — | Named | — | ドルビーサラウンドの強制検出 |
| `-AudioFilters` | String[] | — | — | Named | — | オーディオフィルター |
| `-Visualization` | String | — | — | Named | — | オーディオビジュアライゼーション |
| `-Deinterlace` | String | — | — | Named | — | インターレース解除 |
| `-DeinterlaceMode` | String | — | — | Named | — | インターレース解除モード |
| `-VideoFilters` | String[] | — | — | Named | — | ビデオフィルタモジュール |
| `-VideoFilterModules` | String[] | — | — | Named | — | ビデオフィルターモジュール |
| `-Modules` | String[] | — | — | Named | — | モジュール |
| `-AudioFilterModules` | String[] | — | — | Named | — | オーディオフィルタモジュール |
| `-AudioVisualization` | String | — | — | Named | — | オーディオ可視化モード |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | 希望の字幕言語 |
| `-IgnoredFileExtensions` | String | — | — | Named | — | 無視されるファイル拡張子 |
| `-Arguments` | String | — | — | Named | — | 追加の引数 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 代替データストリームを検索結果に含める |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | プレイリストにはビデオファイルのみを含めてください |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | プレイリストにはオーディオファイルのみを含めてください |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | プレイリストには写真のみを含めてください |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | さらに、プレイリストに動画を含めてください |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | さらにプレイリストに音声ファイルを含める |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | さらにプレイリストに画像を含める |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-Left` | SwitchParameter | — | — | Named | — | ウィンドウを画面の左側に配置します |
| `-Right` | SwitchParameter | — | — | Named | — | ウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | ウィンドウを画面の下端に配置する |
| `-Centered` | SwitchParameter | — | — | Named | — | ウィンドウを画面の中央に配置 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ウィンドウにF11を送信します |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | 常に最前面に表示 |
| `-Random` | SwitchParameter | — | — | Named | — | ランダムにファイルを永遠に再生する |
| `-Loop` | SwitchParameter | — | — | Named | — | Yes, I will repeat all. |
| `-Repeat` | SwitchParameter | — | — | Named | — | 現在の項目を繰り返す |
| `-StartPaused` | SwitchParameter | — | — | Named | — | 一時停止して開始 |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | 再生して終了 |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | 音声を無効にする |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | 字幕を無効にする |
| `-AutoScale` | SwitchParameter | — | — | Named | — | ビデオ自動スケーリング |
| `-HighPriority` | SwitchParameter | — | — | Named | — | プロセスの優先度を上げる |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | タイムストレッチオーディオを有効にする |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 新しいVLCメディアプレーヤーのインスタンスを開く |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | ビデオ壁紙モードを有効にする |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | オーディオのタイムストレッチを有効にする |
| `-Close` | SwitchParameter | — | — | Named | — | VLCメディアプレーヤーのウィンドウを閉じる |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ウィンドウをPowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示するかのどちらかになります。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 「VLCウィンドウを開いた後にフォーカスする」 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開封後にVLCウィンドウを最前面に設定 |
| `-Maximize` | SwitchParameter | — | — | Named | — | ウィンドウを最大化する |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | VLCを開いた後、PowerShellウィンドウのフォーカスを復元します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | ファイルとディレクトリの大文字と小文字の区別を取得または設定します |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ディレクトリ走査の最大再帰深度。0は無制限を意味します。 |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | これらのワイルドカードパターンに一致するファイルまたはディレクトリを除外します（例：*.tmp、*\bin\*）。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 検索で見つかったファイルを返します |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | VLCを開かずに検索で見つかったファイルを返します |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | 各プロセスのウィンドウヘルパーを返します |

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
