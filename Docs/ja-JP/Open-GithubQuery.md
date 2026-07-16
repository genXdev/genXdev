# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-CaseSensitive] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | GitHubで実行する検索クエリ。バッチ検索のために複数のクエリとパイプライン入力をサポートします。各クエリはURLエンコードされ、GitHubの検索に使用されます。 |
| `-Type` | String | — | — | Named | `'Code'` | 検索するメインカテゴリ。デフォルトは'Code'です。 |
| `-In` | String[] | — | — | Named | — | 検索対象のフィールド。選択されたタイプで有効なオプションのみ受け付けられます。 |
| `-User` | String | — | — | Named | — | 検索をユーザーのリソース（リポジトリ、コード、イシューなど）に限定します。 |
| `-Org` | String | — | — | Named | — | 検索を組織内に制限する。 |
| `-Repo` | String | — | — | Named | — | 検索を特定のリポジトリ（'owner/repo'）に制限します。 |
| `-Path` | String | — | — | Named | — | コード検索を特定のファイルまたはディレクトリパスに制限します（GitHub検索構文に従いワイルドカードをサポート）。 *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | ファイル名（パスではなく）で結果をフィルタリングします。 *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | コード検索をファイル拡張子に制限する。 *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | プログラミング言語でフィルタリング。 |
| `-Size` | String | — | — | Named | — | ファイル/リポジトリサイズ。数値および範囲構文をサポート（例を参照）。 |
| `-State` | String | — | — | Named | — | 問題/PRについて。 *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: 指定されたユーザーが作成したものに限定。 *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: アサインされたユーザーのもののみに制限 *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: すべての指定文字列でラベル付けされている必要があります。 *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: 特定のメタデータ（例：ラベル、マイルストーン）が不足している必要があります。 *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | ソートフィールド（タイプによって異なります）。例：「スター」、「フォーク」、「更新日」など。 |
| `-Order` | String | — | — | Named | — | ソートのための「昇順」または「降順」の順序。 |
| `-PerPage` | Int32 | — | — | Named | `10` | ページサイズ（最大100）。 |
| `-Page` | Int32 | — | — | Named | `1` | ページネーション結果のページ番号。 |
| `-Token` | String | — | — | Named | — | GitHub OAuth またはパーソナルアクセストークン。指定されていない場合は、GITHUB_TOKEN または環境変数を使用します。 *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | ブラウザのAccept-Language HTTPヘッダーを設定します。 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 異なるキーシーケンスを送信する間の遅延（ミリ秒）。 *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | 結果を表示するモニター。0 = デフォルト、-1 = 破棄、-2 = セカンダリ。 *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | ブラウザウィンドウの初期幅。 *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | ブラウザウィンドウの初期の高さ。 *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | ブラウザウィンドウの初期X位置。 *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | ブラウザウィンドウの初期Y位置。 *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | ブラウザウィンドウに送信するキーストローク。詳細はコマンドレット GenXdev\Send-Key のドキュメントを参照してください。 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 大文字と小文字を区別して検索結果を一致させる（サポートされている場合）。 |
| `-AsJob` | SwitchParameter | — | — | Named | — | ジョブとして非同期に検索を実行します。 *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | やあ、元気？調子はどう？ *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | APIモードを使用し、ウェブブラウザで開かないでください。 *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | プライベートブラウジング/シークレットモードでブラウザを開き、匿名検索を行います。 *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | デバッグポートを強制有効にし、必要に応じて既存のブラウザを停止します。 *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザで検索結果を開きます。 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chromeブラウザで検索結果を開きます。 *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft Edge または Google Chrome で検索結果を開きます。 *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Mozilla Firefox ブラウザで検索結果を開きます。 *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | Named | — | 登録されているすべての最新ブラウザで検索結果を開きます。 *(Parameter set: )* |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ブラウザを全画面モードで開きます。 *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の左側に配置します。 *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の右側に配置します。 *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の上部に配置します。 *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の下部に配置します。 *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | ブラウザウィンドウを画面の中央に配置します。 *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ブラウザのコントロールを非表示にします。 *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ブラウザ拡張機能の読み込みを防止します。 *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ブラウザのポップアップブロッカーを無効にしてください。 *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 開いた後にブラウザウィンドウをフォーカスします。 *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 開封後、ブラウザウィンドウを前面に設定します。 *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | 配置後にウィンドウを最大化します。 *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell ウィンドウのフォーカスを復元します。 *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 既存のブラウザウィンドウを再利用せず、代わりに新しいものを作成する。 *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Web モードではブラウザプロセスの [System.Diagnostics.Process] オブジェクト、API モードではクエリオブジェクトを返します。 |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | キーを送信する際に制御文字をエスケープします。 *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | キー送信後にPowerShellへキーボードフォーカスが戻るのを防ぐ。 *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 改行には通常のEnterではなく、Shift+Enterを送信します。 *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | よりすっきりとした外観にするために、ウィンドウの枠とタイトルバーを削除します。 *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 同じモニター上でブラウザウィンドウをPowerShellと並べて配置します。 *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存された代替設定をユーザー設定に使用します。 *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッションに保存されている代替設定をクリアします。 *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 設定は永続的なプリファレンスにのみ保存し、セッションには影響を与えないでください。 *(Parameter set: )* |

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
