# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline`

## Synopsis

> 現在時刻、日付、世紀、千年紀を表示する対話型タイムラインを開きます。

## Description

Webベースのインタラクティブタイムラインを開きます。
複数の言語と視覚的なカスタマイズオプションをサポートします。

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Private` | SwitchParameter | — | — | Named | — | シークレット/プライベートブラウジングモードで開きます |
| `-Force` | SwitchParameter | — | — | Named | — | デバッグポートを強制的に有効にし、必要に応じて既存のブラウザを停止します |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge で開く |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome で開く |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge または Google Chrome で開きます。既定のブラウザーによって異なります。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefoxで開く |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OSにインストールされたブラウザの代わりに、Playwright管理のブラウザを使用します。 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwrightが管理するWebKitブラウザを開きます。-PlayWrightを暗に含みます。 |
| `-Headless` | SwitchParameter | — | — | Named | — | ブラウザを可視ウィンドウなしで実行する |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで開きます |
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用するモニター、0 = デフォルト、-1 = 破棄、-2 = 構成済みのセカンダリモニター、デフォルトは Global:DefaultSecondaryMonitor または見つからない場合は 2 |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 全画面モードでは開かないでください |
| `-Width` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期幅 |
| `-Height` | Int32 | — | — | Named | `-1` | Webブラウザウィンドウの初期高さ |
| `-X` | Int32 | — | — | Named | `-999999` | Webブラウザウィンドウの初期X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | ウェブブラウザウィンドウの初期Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置します |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上側に配置する |
| `-Bottom` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の下部に配置します |
| `-Centered` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の中央に配置する |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを表示する |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを妨げないでください |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのaccept-lang HTTPヘッダーを設定する |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。コマンドレット GenXdev\Send-Key のドキュメントを参照してください。 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを開いた後にフォーカスする |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを開いた後に最前面に設定する |
| `-Maximize` | SwitchParameter | — | — | Named | — | 配置後にウィンドウを最大化する |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 配置後にウィンドウを通常状態に復元する |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell ウィンドウのフォーカスを復元 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、新しいウィンドウを作成してください。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | 新しくゲームを始めずに、AIのプレイを見守ってください |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | ウェブブラウザを開かずに、URLを返すだけ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Webブラウザを開いた後、URLを返す |
| `-Language` | String | — | — | 1 | — | 既定のブラウザ言語を上書きするか、[すべて]を選択すると、すべての言語が1分ごとにローテーションされます |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | 現在ドラッグ中のノードの背景を描画するためのcss-color-styleを上書きする |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | 中央にあるフォーカスされたノードの背景を描画するためのcss-color-styleを上書きします |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | フォーカスされたノード（中央）の前景テキストを描画するためのcss-color-styleを上書きします。 |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | 中央にあるフォーカスされたノードの背景を描画するためのcss-color-styleを上書きします |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | 中央のフォーカスされていないノードの前景テキストを描画するためのcss-color-styleを上書きします |
| `-BorderLightColor` | String | — | — | Named | `$null` | 既定のCSS border-light-colorカラースタイルを上書きする |
| `-BorderDarkColor` | String | — | — | Named | `$null` | 既定のCSSボーダーダークカラースタイルを上書きします |
| `-BorderWidth` | Int32 | — | — | Named | `1` | ノードの境界線を描画する際のデフォルト幅を上書きします |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | 背景ローテーション遅延のデフォルト幅を上書きする |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 全画面モードで開く |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザコントロールを非表示にする |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止する |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ポップアップブロッカーを無効にする |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キーを送信する際に制御文字をエスケープする |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後にPowerShellへのキーボードフォーカスの復帰を防ぐ |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 改行の代わりに Shift+Enter を送信する |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒単位） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ブラウザウィンドウの境界線を削除します。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニター上でPowerShellと並べて配置します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI の設定にセッションに保存された代替設定を使用する |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI設定のためにセッションに保存されている代替設定をクリアします |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 永続設定のみに保存し、セッションには影響を与えない |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

ゴッホ風のビジュアルを使用した対話型タイムラインを英語で開きます。

### timeline -mon 2

```powershell
timeline -mon 2
```

エイリアスを使用してモニター2のタイムラインを開きます。

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

Chromeのシークレットモードでタイムラインを全画面表示で開きます。

## Parameter Details

### `-Private`

> シークレット/プライベートブラウジングモードで開きます

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> デバッグポートを強制的に有効にし、必要に応じて既存のブラウザを停止します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Microsoft Edge で開く

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Google Chrome で開く

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Microsoft Edge または Google Chrome で開きます。既定のブラウザーによって異なります。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Firefoxで開く

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> OSにインストールされたブラウザの代わりに、Playwright管理のブラウザを使用します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Playwrightが管理するWebKitブラウザを開きます。-PlayWrightを暗に含みます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> ブラウザを可視ウィンドウなしで実行する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> 登録されているすべての最新ブラウザで開きます

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> 使用するモニター、0 = デフォルト、-1 = 破棄、-2 = 構成済みのセカンダリモニター、デフォルトは Global:DefaultSecondaryMonitor または見つからない場合は 2

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFullScreen`

> 全画面モードでは開かないでください

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Webブラウザウィンドウの初期幅

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Webブラウザウィンドウの初期高さ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Webブラウザウィンドウの初期X位置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> ウェブブラウザウィンドウの初期Y位置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> ブラウザウィンドウを画面の左側に配置します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> ブラウザウィンドウを画面の右側に配置します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> ブラウザウィンドウを画面の上側に配置する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> ブラウザウィンドウを画面の下部に配置します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> ブラウザウィンドウを画面の中央に配置する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoApplicationMode`

> ブラウザコントロールを表示する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-BrowserExtensions`

> ブラウザ拡張機能の読み込みを妨げないでください

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ext`, `Extensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> ブラウザのaccept-lang HTTPヘッダーを設定する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> ブラウザウィンドウに送信するキーストローク。コマンドレット GenXdev\Send-Key のドキュメントを参照してください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> ブラウザウィンドウを開いた後にフォーカスする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> ブラウザウィンドウを開いた後に最前面に設定する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> 配置後にウィンドウを最大化する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> 配置後にウィンドウを通常状態に復元する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> PowerShell ウィンドウのフォーカスを復元

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> 既存のブラウザウィンドウを再利用せず、新しいウィンドウを作成してください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> ブラウザプロセスの [System.Diagnostics.Process] オブジェクトを返します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpectateOnly`

> 新しくゲームを始めずに、AIのプレイを見守ってください

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> ウェブブラウザを開かずに、URLを返すだけ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Webブラウザを開いた後、URLを返す

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> 既定のブラウザ言語を上書きするか、[すべて]を選択すると、すべての言語が1分ごとにローテーションされます

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DragedNodeBackground <String>`

> 現在ドラッグ中のノードの背景を描画するためのcss-color-styleを上書きする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusedNodeBackground <String>`

> 中央にあるフォーカスされたノードの背景を描画するためのcss-color-styleを上書きします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusedNodeForeground <String>`

> フォーカスされたノード（中央）の前景テキストを描画するためのcss-color-styleを上書きします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UnFocusedNodeBackground <String>`

> 中央にあるフォーカスされたノードの背景を描画するためのcss-color-styleを上書きします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UnFocusedNodeForeground <String>`

> 中央のフォーカスされていないノードの前景テキストを描画するためのcss-color-styleを上書きします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderLightColor <String>`

> 既定のCSS border-light-colorカラースタイルを上書きする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderDarkColor <String>`

> 既定のCSSボーダーダークカラースタイルを上書きします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BorderWidth <Int32>`

> ノードの境界線を描画する際のデフォルト幅を上書きします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RotationDelaySeconds <Int32>`

> 背景ローテーション遅延のデフォルト幅を上書きする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `15` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> 全画面モードで開く

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> ブラウザコントロールを非表示にする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> ブラウザ拡張機能の読み込みを防止する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> ポップアップブロッカーを無効にする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> キーを送信する際に制御文字をエスケープする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> キー送信後にPowerShellへのキーボードフォーカスの復帰を防ぐ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> 改行の代わりに Shift+Enter を送信する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> 異なるキーシーケンスを送信する間の遅延（ミリ秒単位）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> ブラウザウィンドウの境界線を削除します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> ブラウザウィンドウを、PowerShellとは別のモニターで全画面表示にするか、同じモニター上でPowerShellと並べて配置します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> AI の設定にセッションに保存された代替設定を使用する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> AI設定のためにセッションに保存されている代替設定をクリアします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 永続設定のみに保存し、セッションには影響を与えない

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GameOfLife.md)
- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-GenXdevAppCatalog.md)
- [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-ViralSimulation.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-Yab.md)
- [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-YabAIBattle.md)
