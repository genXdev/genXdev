# Open-GoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `q

## Synopsis

> GoogleクエリをWebブラウザで開き、設定可能なオプションと豊富なカスタマイズ機能を提供します。

## Description

複数のGoogleクエリをウェブブラウザで開き、多言語対応、モニター選択、ウィンドウ配置、ブラウザ選択、キーボード自動化を包括的にサポートします。この関数は、ブラウザの動作や外観を精密に制御しながらGoogle検索を実行するための多機能インターフェースを提供します。

主な機能:
- Googleの言語フィルタリングによる100以上の言語対応
- 自動または手動のマルチモニター選択
- ウィンドウ配置（左、右、上、下、中央、フルスクリーン）
- プライベート/シークレットブラウジングモード対応
- 気を散らさないブラウジングのためのアプリケーションモード
- 拡張機能とポップアップブロックのオプション
- フォーカス管理とウィンドウ操作
- パイプライン対応のバッチクエリ処理
- ブラウザウィンドウへのキーストローク自動化
- 基盤となるブラウザ関数へのスマートなパラメータパススルー

この関数は、Googleの検索エンジン向けに検索クエリを自動整形し、指定された場合は言語フィルタリングを適用します。すべてのブラウザ配置および管理機能は、基盤となるOpen-Webbrowser関数から継承されています。

## Syntax

```powershell
Open-GoogleQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Googleで検索するクエリ |
| `-Language` | String | — | — | 1 | — | Google検索結果の言語 |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用するモニター、0 = デフォルト、-1 = 破棄、-2 = 設定されたセカンダリモニター、デフォルトは-1 |
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
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キー送信時の制御文字をエスケープする |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後、PowerShellにキーボードフォーカスが戻らないようにする |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 改行のために通常のEnterではなくShift+Enterを送信する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒単位） |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | フォーカスブラウザのウィンドウを開いた後に |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウを前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 位置決め後にウィンドウを通常の状態に戻す |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShellウィンドウのフォーカスを復元 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいウィンドウを作成する |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返してください |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ウィンドウの境界線を削除します |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されたAI設定の代替オプションをクリア |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定はセッションに影響を与えず、永続的な設定のみに保存します。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニターでPowerShellと並べて表示します。 |

## Examples

### Open-GoogleQuery -Queries "PowerShell scripting" -Language "English" -Monitor 0

```powershell
Open-GoogleQuery -Queries "PowerShell scripting" -Language "English" -Monitor 0
```

メインモニターで「PowerShell スクリプト」のGoogle検索を英語で開きます。

### q "machine learning algorithms" -m 2 -fs

```powershell
q "machine learning algorithms" -m 2 -fs
```

エイリアスを使用して、モニター2で「機械学習アルゴリズム」のGoogle検索を全画面モードで開きます。

### "PowerShell", "Python", "JavaScript" | Open-GoogleQuery -Language "English" -Chrome

```powershell
"PowerShell", "Python", "JavaScript" | Open-GoogleQuery -Language "English" -Chrome
```

パイプライン入力を介してChromeで複数のGoogle検索を開きます。それぞれ英語で実行されます。

### Open-GoogleQuery -Queries "artificial intelligence" -Private -NewWindow

```powershell
Open-GoogleQuery -Queries "artificial intelligence" -Private -NewWindow
```

新しいウィンドウで「人工知能」のプライベートブラウジング検索を開きます。

### Open-GoogleQuery -Queries "web development" -ApplicationMode -Centered

```powershell
Open-GoogleQuery -Queries "web development" -ApplicationMode -Centered
```

アプリケーションモード（ブラウザコントロール無し）で検索を開き、画面中央に表示します。

## Related Links

- [Open-GoogleQuery on GitHub](https://github.com/genXdev/genXdev)
