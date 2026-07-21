# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> 高度なフィルタリングオプションを使用してファイルとディレクトリを検索します。

## Description

```text
* Find-Item でファイルを検索 -> l
        * 高速マルチスレッド検索: 並列および非同期 IO 処理を利用し、構成可能な最大並列度（デフォルトは CPU コア数に基づく）で効率的なファイルおよびディレクトリスキャンを実現します。
        * 高度なパターンマッチング: ワイルドカード (*, ?)、再帰パターン（**）などをサポートし、複雑なパス構造で正確なファイルおよびディレクトリクエリを実行します。
              **/filename は、filename が一致するまで再帰的に検索します。これらのパターンは複数指定可能で、その前に一致させるファイル名またはディレクトリ名が必要です。
              このパターンパーサーは Resolve-Path の能力を持ちながら再帰機能を備え、ワイルドカードとして * と ? のみをサポートするため、[ ] ブラケットを含むパスでのバグを防止し、-LiteralPath パラメータの必要性を排除しつつ、ワイルドカードのないパスセクションの整合性を維持します。
        * 拡張コンテンツ検索: 包括的な Select-String 統合により、-Content パラメータを使用してファイル内容内の正規表現パターンを検索します。
            * 大規模ファイル最適化: スマートなオーバーラップバッファと最小限のヒープ割り当てで非常に大きなファイルを処理します。
            * 複数マッチオプション: 行内のすべての一致を検索 (-AllMatches)、またはファイルごとに最初の一致のみを検索 (-List)。
            * 大文字小文字の制御: カルチャ固有のオプション (-Culture) 付きで大文字小文字を区別した一致 (-CaseSensitive) が可能。
            * コンテキストキャプチャ: 一致の前後の行を表示 (-Context) し、理解を深めます。
            * 逆一致: パターンを含まないファイルを検索 (-NotMatch)。
            * 出力形式: 生の文字列出力 (-Raw)、ブール値のクワイエット応答 (-Quiet)、または完全な MatchInfo オブジェクト。
            * パターンタイプ: 正規表現（デフォルト）または単純なリテラル文字列一致 (-SimpleMatch)。
            * エンコーディングサポート: ファイルエンコーディングを指定 (-Encoding) して正確なテキスト処理を実現。
        * パスタイプの柔軟性: 相対パス、絶対パス、UNC パス、ルート付きパス、NTFS 代替データストリーム (ADS) を処理し、ストリーム内のコンテンツ検索もオプションで可能。
        * 複数ドライブサポート: -AllDrives ですべてのドライブ、または -SearchDrives で特定のドライブ（光学ディスクも指定可能）を検索します。
        * ディレクトリとファイルのフィルタリング: ディレクトリのみ (-Directory)、ファイルとディレクトリの両方 (-FilesAndDirectories)、またはコンテンツ一致を含むファイルを検索するオプション。
        * 除外と制限: -Exclude でパターンを除外、最大再帰深度 (-MaxRecursionDepth)、ファイルサイズ制限 (-MaxFileSize、-MinFileSize)、更新日時フィルター (-ModifiedAfter、-ModifiedBefore) を設定。
        * 出力カスタマイズ: FileInfo/DirectoryInfo オブジェクトの PassThru、相対パス、対話モードでのハイパーリンク、非対話モードでのプレーンパスをサポート（問題が発生した場合は -NoLinks を使用して非対話モードを強制）。
        * パフォーマンス最適化: コンテンツ検索ではデフォルトで非テキストファイルをスキップ（-IncludeNonTextFileMatching で上書き可能）、長いパス（260文字以上）を処理、シンボリックリンク/ジャンクションをたどります。
        * 安全機能: タイムアウトサポート (-TimeoutSeconds)、アクセス不可能なアイテムを無視、デフォルトでシステム属性をスキップ、訪問ノード追跡により無限ループを防止。

        * -Category パラメータの有効なカテゴリは次のとおりです: Pictures、Videos、Music、Documents、Spreadsheets、Presentations、Archives、Installers、Executables、Databases、DesignFiles、Ebooks、Subtitles、Fonts、EmailFiles、3DModels、GameAssets、MedicalFiles、FinancialFiles、LegalFiles、SourceCode、Scripts、MarkupAndData、Configuration、Logs、TextFiles、WebFiles、MusicLyricsAndChords、CreativeWriting、Recipes、ResearchFiles
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | 検索するファイル名またはパターン。デフォルトは '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 検索するファイル名またはパターン。デフォルトは '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | コンテンツ内で検索するための正規表現パターン *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 出力内の相対パスを解決するためのベースパス |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ディレクトリタスクの最大並列度 |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オプション: キャンセルタイムアウト（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | 利用可能なすべてのドライブを横断検索 |
| `-Directory` | SwitchParameter | — | — | Named | `False` | ディレクトリのみを検索する |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | ファイルとディレクトリの両方を含む |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | 一致する項目をオブジェクトとして出力 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | 代替データストリームを検索結果に含める |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | サブディレクトリを再帰的に処理しない |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | ディレクトリ走査中にシンボリックリンクとジャンクションを辿る |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | 光ディスクドライブを含める |
| `-SearchDrives` | String[] | — | — | Named | — | オプション：特定のドライブを検索 |
| `-DriveLetter` | Char[] | — | — | Named | — | オプション：特定のドライブを検索 |
| `-Root` | String[] | — | — | Named | — | オプション：特定のディレクトリを検索する |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | Name 入力からディレクトリ コンポーネントを削除することで、ルート ディレクトリ内のみの検索を強制します。 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | ファイル内容を検索するときにテキスト以外のファイルを含める |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | 無人モードを強制し、リンクを生成しません |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | ファイルとディレクトリの大文字と小文字の区別を取得または設定します。 |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | 設定すると、代替データストリーム（ADS）内のコンテンツ検索を実行します。設定しない場合、コンテンツを検索せずにADSファイル情報を出力します。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ディレクトリ走査の最大再帰深度。0は無制限を意味します。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 相対検索でアイテムが見つからない場合に、ツリーを上方向に継続して検索する最大再帰深度。0は無効を意味します。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルサイズの最大値（バイト単位）。0 は無制限を意味します。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 結果に含める最小ファイルサイズ（バイト単位）。0は最小値なしを意味します。 |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | この日時（UTC）以降に変更されたファイルのみを含めます。 |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | この日時（UTC）より前に変更されたファイルのみを含めてください。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | スキップするファイル属性（例：システム、隠しファイル、またはなし）。 |
| `-Exclude` | String[] | — | — | Named | — | これらのワイルドカードパターン（例: *.tmp、*\bin\*）に一致するファイルやディレクトリを除外します。 |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | このパラメーターを指定すると、コマンドレットはテキストの各行で複数の一致を検索します。このパラメーターを指定しない場合、Select-Stringはテキストの各行で最初の一致のみを検索します。 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | cmdletの一致で大文字と小文字を区別することを示します。既定では、一致で大文字と小文字は区別されません。 *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | パターンに一致する行の前後、指定された行数を取得します。 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 指定されたパターンに一致するカルチャ名を指定します。Culture パラメーターは、SimpleMatch パラメーターと共に使用する必要があります。既定の動作では、現在の PowerShell 実行空間（セッション）のカルチャが使用されます。 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | ターゲットファイルのエンコードの種類を指定します。Select-String互換の値と拡張された.NETエンコーディングをサポートします。 *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | 各入力ファイルから、一致する最初のインスタンスのみが返されます。これは、正規表現に一致する内容を持つファイルのリストを取得する最も効率的な方法です。 *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | 出力内の一致する文字列の強調表示を無効にします。 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch パラメータは、指定されたパターンと一致しないテキストを検索します。 *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | このコマンドレットは、MatchInfoオブジェクトの代わりに単純な応答を返します。パターンが見つかった場合は$trueが返され、見つからなかった場合は$nullが返されます。 *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | このコマンドレットは、MatchInfoオブジェクトではなく、一致した文字列のみを出力します。これにより、UnixのgrepやWindowsのfindstr.exeコマンドに最も近い動作が得られます。 *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | このコマンドレットは、正規表現の一致ではなく単純な一致を使用することを示します。単純な一致では、Select-StringはPatternパラメーターのテキストを入力内で検索します。Patternパラメーターの値を正規表現ステートメントとして解釈しません。 *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

特定の単語を含むファイルを検索する
現在のディレクトリとサブディレクトリ内のすべてのファイルから「translation」という単語を含むものを検索します。

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

バージョン文字列を含むJavaScriptファイルを検索
「Version == `x.y.z`」の形式のバージョン文字列を含むJavaScriptファイルを検索します。

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

すべてのディレクトリを一覧表示
現在のディレクトリとそのサブディレクトリ内のすべてのディレクトリを検索します。

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

XMLファイルを検索し、オブジェクトをパイプラインに渡す
すべての.xmlファイルを検索し、結果をオブジェクトとしてパイプラインを通して渡します。

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

代替データストリームを含める
すべてのファイルを検索し、その代替データストリームを結果に含めます。

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

すべてのドライブを横断して検索
利用可能なすべてのドライブからすべてのPDFファイルを検索します。

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

カスタムタイムアウトと並列処理
5分のタイムアウトと制限された並列処理でログファイルを検索します。

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

パイプライン入力
Get-ChildItemからファイルパスを渡して、「error」を含むファイルを検索します。

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

再帰の深さを制限する
テキストファイルを検索しますが、再帰はディレクトリレベル2までに制限します。

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

ファイルサイズでフィルター
1MBより大きく10MBより小さいファイルを検索します。

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

変更日でフィルター
2025年1月1日以降に変更されたファイルを検索します。

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

特定のパターンを除外
すべてのファイルを検索するが、一時ファイルとbinディレクトリは除外します。

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

特定のドライブを検索
C:ドライブとD:ドライブのみで.docxファイルを検索します。

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

大文字と小文字を区別したコンテンツ検索
ファイルの内容で「Error」（大文字と小文字を区別）を含むファイルを検索します。

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

代替データストリームの内容を検索
「secret」を含む代替データストリームを持つファイルを検索します。

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

各行のすべての一致を検索
各行で「function」のすべての出現を検索します（最初の一致だけでなく）。

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

一致箇所の前後を表示
各一致箇所の前に2行、後ろに3行を表示して理解を深めます。

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

一致する文字列のみを取得
一致するオブジェクト全体ではなく、一致するテキスト文字列のみを返します。

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

単純なブール値チェック
パターンが存在するかどうかを確認するために、一致の詳細ではなく true/false を返します。

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

ファイルごとに最初の一致のみを検索
効率的なファイル一覧のために各ファイルの最初の一致で停止します。

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

リテラル文字列一致
正規表現解釈なしでSimpleMatchを使用して正確なテキストを検索します。

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

パターンを含まないファイルを検索する
NotMatch を使用して、指定されたパターンを含まないファイルを検索します。

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

ファイルエンコーディングを指定
特定のエンコーディングでファイルを検索し、正確なテキスト処理を実現します。

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

カルチャテキスト比較
国際テキストにはSimpleMatchでカルチャ固有のマッチングを使用します。

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

複雑なコンテンツ検索とファイルフィルター
ファイルサイズ、日付、コンテンツフィルターを組み合わせて、正確な検索を実行。

## Parameter Details

### `-Name <String[]>`

> 検索するファイル名またはパターン。デフォルトは '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> 検索するファイル名またはパターン。デフォルトは '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> コンテンツ内で検索するための正規表現パターン

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> 出力内の相対パスを解決するためのベースパス

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> ディレクトリタスクの最大並列度

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> オプション: キャンセルタイムアウト（秒）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> 利用可能なすべてのドライブを横断検索

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> ディレクトリのみを検索する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> ファイルとディレクトリの両方を含む

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> 一致する項目をオブジェクトとして出力

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> 代替データストリームを検索結果に含める

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> サブディレクトリを再帰的に処理しない

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> ディレクトリ走査中にシンボリックリンクとジャンクションを辿る

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> 光ディスクドライブを含める

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> オプション：特定のドライブを検索

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> オプション：特定のドライブを検索

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> オプション：特定のディレクトリを検索する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> Name 入力からディレクトリ コンポーネントを削除することで、ルート ディレクトリ内のみの検索を強制します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> ファイル内容を検索するときにテキスト以外のファイルを含める

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> 無人モードを強制し、リンクを生成しません

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> ファイルとディレクトリの大文字と小文字の区別を取得または設定します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> 設定すると、代替データストリーム（ADS）内のコンテンツ検索を実行します。設定しない場合、コンテンツを検索せずにADSファイル情報を出力します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> ディレクトリ走査の最大再帰深度。0は無制限を意味します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> 相対検索でアイテムが見つからない場合に、ツリーを上方向に継続して検索する最大再帰深度。0は無効を意味します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> 結果に含めるファイルサイズの最大値（バイト単位）。0 は無制限を意味します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> 結果に含める最小ファイルサイズ（バイト単位）。0は最小値なしを意味します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> この日時（UTC）以降に変更されたファイルのみを含めます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> この日時（UTC）より前に変更されたファイルのみを含めてください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> スキップするファイル属性（例：システム、隠しファイル、またはなし）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> これらのワイルドカードパターン（例: *.tmp、*\bin\*）に一致するファイルやディレクトリを除外します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> このパラメーターを指定すると、コマンドレットはテキストの各行で複数の一致を検索します。このパラメーターを指定しない場合、Select-Stringはテキストの各行で最初の一致のみを検索します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> cmdletの一致で大文字と小文字を区別することを示します。既定では、一致で大文字と小文字は区別されません。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> パターンに一致する行の前後、指定された行数を取得します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> 指定されたパターンに一致するカルチャ名を指定します。Culture パラメーターは、SimpleMatch パラメーターと共に使用する必要があります。既定の動作では、現在の PowerShell 実行空間（セッション）のカルチャが使用されます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> ターゲットファイルのエンコードの種類を指定します。Select-String互換の値と拡張された.NETエンコーディングをサポートします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> 各入力ファイルから、一致する最初のインスタンスのみが返されます。これは、正規表現に一致する内容を持つファイルのリストを取得する最も効率的な方法です。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> 出力内の一致する文字列の強調表示を無効にします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> NotMatch パラメータは、指定されたパターンと一致しないテキストを検索します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> このコマンドレットは、MatchInfoオブジェクトの代わりに単純な応答を返します。パターンが見つかった場合は$trueが返され、見つからなかった場合は$nullが返されます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> このコマンドレットは、MatchInfoオブジェクトではなく、一致した文字列のみを出力します。これにより、UnixのgrepやWindowsのfindstr.exeコマンドに最も近い動作が得られます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> このコマンドレットは、正規表現の一致ではなく単純な一致を使用することを示します。単純な一致では、Select-StringはPatternパラメーターのテキストを入力内で検索します。Patternパラメーターの値を正規表現ステートメントとして解釈しません。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-TextFileAtomic.md)
