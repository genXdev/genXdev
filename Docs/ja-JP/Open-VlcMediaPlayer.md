# Open-VlcMediaPlayer

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlc

## Synopsis

> VLC Media Playerを起動し、豊富な設定オプションで制御します。

## Description

この関数は、ウィンドウの位置設定、モニター選択、再生設定、オーディオおよびビデオフィルター、字幕処理、多言語サポート、ネットワークプロキシ設定、高度なパフォーマンスオプションを備え、VLCメディアプレーヤーを起動および制御するための包括的なインターフェースを提供します。VLCがインストールされていない場合は自動的にインストールし、メディアプレイブックシナリオ向けに幅広いカスタマイズを実現します。GenXdevウィンドウ管理システムとシームレスに統合し、Send-Key機能を介したキーボード入力の自動化をサポートします。

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | VLCで開くメディアファイルまたはURL |
| `-Width` | Int32 | — | — | 1 | `-1` | ウィンドウの初期幅 |
| `-Height` | Int32 | — | — | 2 | `-1` | ウィンドウの初期高さ |
| `-X` | Int32 | — | — | 3 | `-999999` | ウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | 4 | `-999999` | ウィンドウの初期Y位置 |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | VLC プレイヤー ウィンドウに送信するキーストロークについては、コマンドレット GenXdev\Send-Key のドキュメントを参照してください |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | VLCにキーを送信する際は、制御文字と修飾キーをエスケープしてください |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | VLCにキーを送るときは、Enterキーの代わりにShift+Enterを使用してください |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | VLCにキーを送信する際の、異なる入力文字列間の遅延（ミリ秒単位） |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後、VLCウィンドウにキーボードフォーカスを保持する |
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用するモニター、0 = デフォルト、-1 は破棄 |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-Left` | SwitchParameter | — | — | Named | — | ウィンドウを画面の左側に配置します |
| `-Right` | SwitchParameter | — | — | Named | — | ウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | ウィンドウを画面の下端に配置する |
| `-Centered` | SwitchParameter | — | — | Named | — | ウィンドウを画面の中央に配置 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ウィンドウにF11を送信します |
| `-PassThru` | SwitchParameter | — | — | Named | — | 各プロセスのウィンドウヘルパーを返します |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | VLC を起動した後に PowerShell ウィンドウのフォーカスを戻す |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |

## Examples

### Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0 Opens a video file in fullscreen mode on the primary monitor for immersive viewing experience.

```powershell
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.
```

### vlc "video.mp4" -fs -m 0 Short form using aliases to open video fullscreen on monitor 0 with minimal typing required.

```powershell
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.
```

### Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English" Opens a movie with external subtitles and specific audio language for enhanced viewing with captions.

```powershell
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
```

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
