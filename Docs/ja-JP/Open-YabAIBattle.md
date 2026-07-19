# Open-YabAIBattle

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `yabbattle

## Synopsis

> ウェブブラウザでYabAI Battleゲームを開きます。

## Description

この関数は、YabAIバトルゲームをウェブブラウザで起動し、ウィンドウ配置、ブラウザ選択、表示モードに関する豊富なカスタマイズオプションを提供します。GenXdev\Open-Webbrowser関数をラップし、ゲーム固有のURL構築とパラメータ処理を行います。

この関数は2つのゲームモードをサポートします：
- バトルモード：新しいAI対AIバトルを開始
- 観戦モード：既存のAIバトルを視聴

ブラウザの配置オプションには、左、右、上、下、中央、フルスクリーンモードがあり、マルチモニターに対応しています。関数は自動的にアプリケーションモード設定とブラウザ拡張機能管理を処理し、最適なゲーム体験を提供します。

## Syntax

```powershell
Open-YabAIBattle [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | ゲームインターフェースの言語 |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | 新しいゲームを始めずに、AIがプレイするのを見ているだけ |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用するモニター。0 = デフォルト、-1 = 破棄、-2 = 設定済みセカンダリモニター（$Global:DefaultSecondaryMonitor が存在しない場合はデフォルトで 2） |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
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
| `-AcceptLang` | String | — | — | Named | — | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キーを送信する際に制御文字をエスケープします。 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後にPowerShellへキーボードフォーカスが戻るのを防ぐ。 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | キーを送信する際、改行は通常のEnterではなくShift+Enterで送信します。 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 各キー送信間の遅延（ミリ秒）。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | ブラウザを開いた後、前のウィンドウにフォーカスを戻す。 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返してください |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開かないでください |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを表示する |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ブラウザウィンドウの境界線を削除します。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存された代替設定をAIの選択肢に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリアします。 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定は永続的なプリファレンスにのみ保存し、セッションには影響を与えないでください。 |

## Examples

### Open-YabAIBattle -Edge -Private -NoFullScreen

```powershell
Open-YabAIBattle -Edge -Private -NoFullScreen
```

YabAIバトルゲームをMicrosoft Edgeでプライベートブラウジングモードで開きます（全画面表示なし）。

### yabbattle -e -incognito -nfs

```powershell
yabbattle -e -incognito -nfs
```

Edgeのエイリアス、シークレットモード、全画面表示なしを使用してゲームを開きます。

### Open-YabAIBattle -SpectateOnly -Chrome

```powershell
Open-YabAIBattle -SpectateOnly -Chrome
```

Google Chromeを使用して観戦モードでゲームを開き、AIのバトルを観戦します。

### Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

```powershell
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left
```

モニター1の左側に配置されたスペイン語インターフェースでゲームを起動します。

## Related Links

- [Open-YabAIBattle on GitHub](https://github.com/genXdev/genXdev)
