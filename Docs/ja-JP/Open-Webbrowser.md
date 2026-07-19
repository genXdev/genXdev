# Open-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wb

## Synopsis

> 1つ以上のブラウザウィンドウでURLを開き、位置やスタイルをオプションで指定できます。

## Description

この関数は、ブラウザ起動に関する高度なラッパーを提供し、ウィンドウの配置、ブラウザの選択、動作のカスタマイズに関する豊富なオプションを備えています。Edge、Chrome、Firefoxを含む複数のブラウザをサポートし、プライベートブラウジング、アプリケーションモード、精密なウィンドウ管理などの機能を提供します。

主な機能：
- スマートなブラウザ検出と選択
- ウィンドウ配置（左、右、上、下、中央、全画面）
- 自動または手動のモニター選択によるマルチモニター対応
- プライベート/シークレットブラウジングモードのサポート
- 集中ブラウジングのためのアプリケーションモード
- 拡張機能とポップアップブロックのオプション
- フォーカス管理とウィンドウ操作
- 複数ブラウザにわたるバッチURL開封
- ブラウザウィンドウへのキーストローク自動化

この関数はシステムの機能を自動検出し、それに応じて動作を調整できます。システムにインストールされていないブラウザについては、エラーなしで操作が静かにスキップされます。

## Syntax

```powershell
Open-Webbrowser [[-Url] <String[]>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-Input <String>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String[] | — | — | 0 | — | ブラウザで開くURL |
| `-Input` | String | — | ✅ (ByValue, ByPropertyName) | Named | — | ブラウザで開くURL |
| `-Monitor` | Int32 | — | — | 1 | `-2` | 使用するモニター。0 = デフォルト、-1 = 破棄、-2 = 設定済みセカンダリモニター（$Global:DefaultSecondaryMonitor が存在しない場合はデフォルトで 2） |
| `-Width` | Int32 | — | — | Named | `-1` | ウェブブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期の高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-Force` | SwitchParameter | — | — | Named | — | 新しいブラウザインスタンスを開く前に、既存のブラウザインスタンスを強制終了します |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-FullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
| `-Private` | SwitchParameter | — | — | Named | — | シークレットモードで開く |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ポップアップブロッカーを無効にする |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスのPowerShellオブジェクトを返します。 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示するように配置します。 |
| `-KeysToSend` | String[] | — | — | Named | — | ウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時に制御文字と修飾キーをエスケープしてください |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信時にターゲットウィンドウへのキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に Enter の代わりに Shift+Enter を使用する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | キー送信時における異なる入力文字列間の遅延（ミリ秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OSにインストールされているブラウザの代わりにPlaywright管理のブラウザを使用する |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを開きます。-PlayWright を暗示します。 |
| `-Headless` | SwitchParameter | — | — | Named | — | 表示ウィンドウなしでブラウザを実行する |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティソフトウェア（Playwrightブラウザ）のインストールに自動的に同意する |

## Examples

### wb -PlayWright https://github.com

```powershell
wb -PlayWright https://github.com
```

Playwrightで管理されるChromiumブラウザでGitHubを開きます。

### Open-Webbrowser -Url "https://github.com"

```powershell
Open-Webbrowser -Url "https://github.com"
```

デフォルトのブラウザでGitHubを開きます。

### Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left

```powershell
Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left
```

モニター1の左半分にStack Overflowを開きます。

### wb "https://google.com" -m 0 -fs

```powershell
wb "https://google.com" -m 0 -fs
```

エイリアスを使用してプライマリモニターでGoogleを全画面モードで開く

### Open-Webbrowser -Chrome -Private -NewWindow

```powershell
Open-Webbrowser -Chrome -Private -NewWindow
```

新しいChromeウィンドウをシークレットモードで開きます。

### "https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All

```powershell
"https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All
```

パイプライン経由でインストールされているすべてのブラウザで複数のURLを開きます。

### Open-Webbrowser -Monitor 0 -Right

```powershell
Open-Webbrowser -Monitor 0 -Right
```

既に開いているブラウザウィンドウを、プライマリモニタの右側に再配置します。

### Open-Webbrowser -ApplicationMode -Url "https://app.example.com"

```powershell
Open-Webbrowser -ApplicationMode -Url "https://app.example.com"
```

ブラウザコントロールなしでアプリモードでWebアプリケーションを開きます。

## Related Links

- [Open-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
