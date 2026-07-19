# Open-GameOfLife

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `gameoflife, `conway

## Synopsis

> Webブラウザでコンウェイのライフゲームのシミュレーションを開きます。

## Description

インタラクティブなConwayのライフゲームシミュレーションを、さまざまな位置指定・設定オプションを備えたWebブラウザウィンドウで開きます。Conwayのライフゲームは、1970年に数学者John Conwayが考案したセル・オートマトンで、生きているか死んでいるかの2つの状態を持つセルのグリッドで構成されています。

この関数は、ウィンドウの位置指定、ブラウザ選択、プライベートブラウジング、自動操作機能など、包括的なブラウザ制御を提供します。シミュレーションはhttps://conway.genxdev.net/で実行され、さまざまなインタラクションモードをサポートしています。

## Syntax

```powershell
Open-GameOfLife [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | ブラウザインターフェースとコンテンツのローカライズのための言語設定 |
| `-Private` | SwitchParameter | — | — | Named | — | シークレットモードで開く |
| `-Force` | SwitchParameter | — | — | Named | — | 必要に応じて既存のブラウザを停止し、デバッグポートを強制的に有効にします |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft EdgeまたはGoogle Chromeで開きます |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox で開く |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OSにインストールされているブラウザの代わりにPlaywright管理のブラウザを使用する |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを開きます。-PlayWright を暗示します。 |
| `-Headless` | SwitchParameter | — | — | Named | — | 表示ウィンドウなしでブラウザを実行する |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用するモニター、0=デフォルト、-1=破棄、-2=設定済みセカンダリモニター、デフォルトは-1、位置決めなし |
| `-FullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
| `-Width` | Int32 | — | — | Named | `-1` | ウェブブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期の高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ポップアップブロッカーを無効にする |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | ブラウザウィンドウにキーストロークを送信する際は、制御文字をエスケープしてください。 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キーストロークをブラウザウィンドウに送信した後、PowerShellにキーボードフォーカスが戻らないようにします。 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ブラウザにキーストロークを送信する際、改行には通常のEnterの代わりにShift+Enterを使用してください。 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒）。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | ブラウザを開いた後、PowerShellウィンドウにフォーカスを戻します。 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返してください |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開かないでください |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを表示する |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ブラウザウィンドウの境界線を削除します。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ブラウザプロファイルにセッション専用モードを使用（閉じるとクッキーとデータが消去されます）。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ブラウザのセッション/プロファイルデータを開く前に消去してください。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 前回のブラウザセッションの復元をスキップします。 |

## Examples

### Open-GameOfLife -Monitor 1 -FullScreen

```powershell
Open-GameOfLife -Monitor 1 -FullScreen
```

モニター1でコンウェイのライフゲームをフルスクリーンモードで開きます。

### Open-GameOfLife -Language "French" -Chrome -Private

```powershell
Open-GameOfLife -Language "French" -Chrome -Private
```

Chromeをシークレットモードで開き、ライフ・ゲームをフランス語で起動します。

### gameoflife -m 0 -app

```powershell
gameoflife -m 0 -app
```

エイリアスを使用して、プライマリモニターでアプリケーションモードのライフゲームを開きます。

### conway -Edge -Left -Width 800 -Height 600

```powershell
conway -Edge -Left -Width 800 -Height 600
```

Microsoft Edge で Conway のライフゲームを開き、左側に配置します。
特定の寸法で。

## Related Links

- [Open-GameOfLife on GitHub](https://github.com/genXdev/genXdev)
