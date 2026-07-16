# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | 考えられるすべてのメタデータタイプのいずれかに一致します。 |
| `-Name` | String[] | — | — | 1 | `@('.\')` | 画像を検索するディレクトリパスの配列 |
| `-Language` | String | — | — | Named | — | 説明やキーワードのための言語。 |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | 検索対象の説明テキスト、ワイルドカード使用可。 |
| `-Keywords` | String[] | — | — | Named | `@()` | 検索対象のキーワード、ワイルドカード使用可。 |
| `-People` | String[] | — | — | Named | `@()` | 検索対象の人々、ワイルドカード使用可能。 |
| `-Objects` | String[] | — | — | Named | `@()` | 検索対象オブジェクト、ワイルドカード使用可能。 |
| `-Scenes` | String[] | — | — | Named | `@()` | 検索するシーンカテゴリ、ワイルドカード使用可。 |
| `-PictureType` | String[] | — | — | Named | `@()` | フィルタリングする画像タイプ（例：'daylight'、'evening'、'indoor'など）。ワイルドカード対応。 |
| `-StyleType` | String[] | — | — | Named | `@()` | フィルタするスタイルタイプ（例：'casual'、'formal'など）。ワイルドカードをサポートします。 |
| `-OverallMood` | String[] | — | — | Named | `@()` | フィルタリングする全体的なムード（例：「穏やか」「楽しい」「悲しい」など）。ワイルドカードに対応しています。 |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | 画像のEXIFメタデータに基づいてカメラメーカーでフィルタリングします。ワイルドカードをサポートします。 |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | 画像のEXIFメタデータ内のカメラモデルでフィルタリングします。ワイルドカードに対応しています。 |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | 画像のEXIFメタデータのGPS緯度範囲でフィルタリング |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | 画像のEXIFメタデータのGPS経度範囲でフィルタリング |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | 画像のEXIFメタデータのGPS高度範囲でフィルタリング（メートル単位）。 |
| `-GeoLocation` | Double[] | — | — | Named | — | 近くを検索するための地理座標 [緯度, 経度]。 |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | 画像を検索する際のGeoLocationからの最大距離（メートル単位）。 |
| `-MetaExposureTime` | Double[] | — | — | Named | — | 画像のEXIFメタデータの露出時間範囲（秒単位）でフィルタリングします。 |
| `-MetaFNumber` | Double[] | — | — | Named | — | 画像のEXIFメタデータ内のF値（絞り）範囲でフィルタリングします。 |
| `-MetaISO` | Int32[] | — | — | Named | — | 画像のEXIFメタデータのISO感度範囲でフィルタリングします。 |
| `-MetaFocalLength` | Double[] | — | — | Named | — | 画像のEXIFメタデータから焦点距離範囲（mm）でフィルタリング |
| `-MetaWidth` | Int32[] | — | — | Named | — | EXIFメタデータから画像の幅をピクセル範囲でフィルタリング |
| `-MetaHeight` | Int32[] | — | — | Named | — | EXIFメタデータからピクセル単位の画像の高さ範囲でフィルタリング |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | EXIFメタデータから撮影日でフィルタリング。日付範囲を指定できます。 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | ギャラリーのタイトル |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | ギャラリーの説明 |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時に制御文字と修飾キーをエスケープしてください |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後、PowerShellにキーボードフォーカスが戻らないようにする |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に Enter の代わりに Shift+Enter を使用する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | キー送信時における異なる入力文字列間の遅延（ミリ秒） |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用するモニター: 0 = デフォルト、-1 = 破棄、-2 = 設定済みのセカンダリモニター。デフォルトは Global:DefaultSecondaryMonitor、見つからない場合は 2。 |
| `-Width` | Int32 | — | — | Named | `-1` | ウェブブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期の高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | 画像をbase64として埋め込みます。 |
| `-NoFallback` | SwitchParameter | — | — | Named | — | フォールバック動作を無効にするためのスイッチ。 |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | データベースの初期化と再構築をスキップします。 |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 利用可能なすべてのドライブを検索 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | サブディレクトリに再帰しない |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ディレクトリ走査時にシンボリックリンクとジャンクションをたどります。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ディレクトリ走査の最大再帰深度。0は無制限を意味します。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 相対検索でツリーを上方向に検索し続ける最大再帰深度。項目が見つからない場合、0は無効を意味します。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最大サイズ（バイト単位）。0は無制限を意味します。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最小サイズ（バイト単位）。0の場合は最小値なし。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | この日時（UTC）以降に変更されたファイルのみを含めてください。 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | この日時（UTC）より前に変更されたファイルのみを含めてください。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | スキップするファイル属性（例：システム、隠しファイル、なし）。 |
| `-HasNudity` | SwitchParameter | — | — | Named | — | ヌード画像を含む画像をフィルタリングします。 |
| `-NoNudity` | SwitchParameter | — | — | Named | — | ヌードを含まない画像をフィルタリングします。 |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | 露骨なコンテンツを含む画像をフィルタリングします。 |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | 露骨なコンテンツを含まない画像をフィルタリングします。 |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | 検索結果をブラウザベースの画像ギャラリーで表示します。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 画像データをオブジェクトとして返します。-ShowInBrowser と一緒に使用すると、ギャラリーを表示すると同時にオブジェクトを返します。 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの枠とタイトルバーを削除して、すっきりとした外観にする |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザ ウィンドウを PowerShell と同じモニター上に並べて配置します。 |
| `-Interactive` | SwitchParameter | — | — | Named | — | ブラウザに接続し、編集や削除などの追加ボタンを追加します。-ShowInBrowser と一緒に使用した場合のみ有効です。 |
| `-Private` | SwitchParameter | — | — | Named | — | シークレットモードで開く |
| `-Force` | SwitchParameter | — | — | Named | — | 必要に応じて既存のブラウザを停止し、デバッグポートを強制的に有効にします |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-FullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ポップアップブロッカーを無効にする |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <html>
<head>
<title>テストページ</title>
</head>
<body>
<h1>こんにちは、世界！</h1>
<p>これはHTMLのテスト段落です。</p>
</body>
</html> |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 丸みを帯びた長方形で画像のみを表示し、下にテキストはなし。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 言語、画像コレクションなどのAI設定用にセッションに保存されている代替設定をクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 1秒あたりのページ自動スクロールピクセル数（無効にする場合はnull） |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 可視範囲内の長方形（オブジェクト/面）をアニメーションさせ、300msごとに循環させる |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Force single column layout (centered, 1/3 screen width) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 各画像パスに付加するプレフィックス（例：リモートURL用） |
| `-MinConfidenceRatio` | Double | — | — | Named | — | 人物、シーン、オブジェクトを信頼度でフィルタリングするための最小信頼度比率（0.0〜1.0）。この値以上の信頼度を持つ人物、シーン、オブジェクトのデータのみを返します。 |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
