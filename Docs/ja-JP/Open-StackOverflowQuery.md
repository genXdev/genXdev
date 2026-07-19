# Open-StackOverflowQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qso

## Synopsis

> Stack Overflow の検索クエリをウェブブラウザで開きます。

## Description

包括的なブラウザと表示設定オプションを使用して、1つ以上のStack Overflow検索クエリをウェブブラウザで開きます。この関数は、ウィンドウの配置、ブラウザの選択、動作のカスタマイズに関する高度なオプションを備えたStack Overflow検索機能の高度なラッパーを提供します。

主な機能：
- パイプライン入力を使用した複数検索クエリのサポート
- スマートなブラウザ検出と選択（Edge、Chrome、Firefox、すべてのブラウザ）
- 高度なウィンドウ配置（左、右、上、下、中央、全画面）
- 自動または手動のモニター選択によるマルチモニターサポート
- プライベート/シークレットブラウジングモードのサポート
- 気を散らさないブラウジングのためのアプリケーションモード
- 国際的な検索結果のための言語ローカリゼーションサポート
- 拡張機能とポップアップブロックのオプション
- フォーカス管理とウィンドウ操作
- ブラウザウィンドウへのキーストローク自動化
- 自動化ワークフローのためのURL返却オプション

この関数はシステムの機能を自動的に検出し、それに応じて動作を調整します。システムにインストールされていないブラウザについては、エラーを発生させずに処理をスキップします。

## Syntax

```powershell
Open-StackOverflowQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Stack Overflow で実行する検索クエリ |
| `-Language` | String | — | — | 1 | — | ローカライズされたStack Overflowコンテンツの検索結果の戻り言語 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用するモニター、0=デフォルト、-1=破棄、-2=設定済みセカンダリモニター、デフォルトは-1、位置決めなし |
| `-Width` | Int32 | — | — | Named | `-1` | ウェブブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期の高さ |
| `-X` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-AcceptLang` | String | — | — | Named | — | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細については、コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
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
| `-FullScreen` | SwitchParameter | — | — | Named | — | フルスクリーンモードで開く |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置 |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 画面の中央にブラウザウィンドウを配置します |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ポップアップブロッカーを無効にする |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返してください |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時の制御文字をエスケープする |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後、PowerShellにキーボードフォーカスが戻らないようにする |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 改行のために通常のEnterではなくShift+Enterを送信する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒単位） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ブラウザウィンドウの境界線を削除します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定をStack Overflowの検索設定に使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Stack Overflowの検索設定に対して、セッションに保存されている明確な代替設定 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Stack Overflow検索の設定のみを永続的なプリファレンスに保存し、セッションには影響を与えない |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示します。 |

## Examples

### Open-StackOverflowQuery -Queries "powershell array" -Monitor 0

```powershell
Open-StackOverflowQuery -Queries "powershell array" -Monitor 0
```

プライマリモニターで「powershell array」のStack Overflow検索を開きます。

### qso "powershell array" -mon 0

```powershell
qso "powershell array" -mon 0
```

エイリアスを使ってモニターの位置を指定し、Stack Overflow検索を開く

### "powershell", "array manipulation" | Open-StackOverflowQuery -Language "English" -Chrome

```powershell
"powershell", "array manipulation" | Open-StackOverflowQuery -Language "English" -Chrome
```

Chromeで複数のStack Overflow検索を英語の言語設定で開きます。

### Open-StackOverflowQuery -Queries "c# linq" -ReturnURL

```powershell
Open-StackOverflowQuery -Queries "c# linq" -ReturnURL
```

ブラウザを開かずにStack Overflowの検索URLを返します。

## Related Links

- [Open-StackOverflowQuery on GitHub](https://github.com/genXdev/genXdev)
