# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Playwright管理のブラウザを永続的なユーザープロファイルで起動します。

## Description

<details>
<summary><b>Expand description</b></summary>

Playwrightの組み込みChromium、Firefox、WebKitバイナリを利用して、OSにインストールされたブラウザとは完全に独立したスタンドアロンのブラウザインスタンスを起動します。ブラウザはGenXdev AppDataに保存された永続的なユーザープロファイルを使用するため、Cookie、localStorage、セッションは再起動後も保持されます。

このコマンドレットは、Chrome 136以降で動作しなくなった旧来のCDP/デバッグポート方式に代わるものです。システムブラウザにデバッグポート経由でアタッチする代わりに、Playwrightがブラウザのライフサイクルを直接管理します。

主な機能:
- ブラウザタイプごとの永続プロファイル（Chromium、Firefox、WebKit）
- 設定可能なビューポートサイズとウィンドウ位置
- 自動化のためのヘッドレスモード
- プロキシサーバーのサポート
- カスタムAccept-Languageヘッダー
- シークレット/プライベートコンテキストオプション
- ブラウザ拡張機能の制御
- -Width、-Height、-Left、-Rightなどによるビューポートサイズと位置指定
- 強制再起動で既存のインスタンスを閉じて新規起動

起動されたブラウザとそのコンテキスト/ページは、他のコマンドレットで使用するために$Global:GenXdevPlaywrightに保存されます。

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | 起動するブラウザエンジン: Chromium、Firefox、またはWebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | 表示ウィンドウなしでブラウザを実行する |
| `-Proxy` | String | — | — | Named | — | プロキシサーバーのURL（例：http://proxy:8080） |
| `-AcceptLang` | String | — | — | Named | — | ブラウザのAccept-Language HTTPヘッダーを設定する |
| `-Width` | Int32 | — | — | Named | `-1` | 初期ビューポート幅（ピクセル単位） |
| `-Height` | Int32 | — | — | Named | `-1` | 初期ビューポートの高さ（ピクセル単位） |
| `-Force` | SwitchParameter | — | — | Named | — | 既存のブラウザを閉じて、新しく起動する |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | インストール同意ダイアログの再表示を強制する |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティソフトウェア（Playwrightブラウザ）のインストールに自動的に同意する |
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用するモニター。0 = デフォルト、-1 = 破棄、-2 = 設定済みセカンダリモニター（$Global:DefaultSecondaryMonitor が存在しない場合はデフォルトで 2） |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | ウィンドウを最大化して画面全体に表示します |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示するように配置します。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Minimize` | SwitchParameter | — | — | Named | — | 位置指定後にウィンドウを最小化する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-KeysToSend` | String[] | — | — | Named | — | ウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時に制御文字と修飾キーをエスケープしてください |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信時にターゲットウィンドウへのキーボードフォーカスを保持する |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キー送信時に Enter の代わりに Shift+Enter を使用する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | キー送信時における異なる入力文字列間の遅延（ミリ秒） |
| `-PassThru` | SwitchParameter | — | — | Named | — | さらに操作するためのウィンドウヘルパーオブジェクトを返します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
