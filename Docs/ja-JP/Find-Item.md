# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> 高度なフィルタリングオプションを使用してファイルとディレクトリを検索します。

## Description

* Find-Item -> l でファイルを検索
        * 高速マルチスレッド検索: 並列および非同期IO処理を活用し、構成可能な最大並列度（デフォルトはCPUコア数に基づく）で効率的にファイルとディレクトリをスキャンします。
        * 高度なパターンマッチング: ワイルドカード（*、?）、**のような再帰パターン、複雑なパス構造をサポートし、ファイルとディレクトリの正確なクエリを実現します。
              **/filename は、filename が一致するまで再帰します。これらのパターンは複数許可され、一致するファイル名またはディレクトリ名が前に置かれている必要があります。
              このパターンパーサーは Resolve-Path の能力を持ちながら再帰機能を備え、ワイルドカードとして * と ? のみをサポートするため、[ ] 括弧を含むパスでのバグを防ぎます。これにより -LiteralPath パラメータの必要性がなくなり、完全なパス全体でのワイルドカードマッチとは異なり、ワイルドカードを含まないパス部分の整合性が維持されます。
        * 拡張コンテンツ検索: -Content パラメータを使用したファイル内容内の正規表現パターンによる包括的な Select-String 統合。
            * 大規模ファイル最適化: スマートなオーバーラップバッファと最小限のヒープ割り当てで超大ファイルを処理。
            * 複数マッチオプション: 行ごとにすべての一致を検索（-AllMatches）またはファイルごとに最初の一致のみ（-List）。
            * 大文字小文字の制御: カルチャ固有のオプション（-Culture）を伴う大文字小文字を区別したマッチング（-CaseSensitive）。
            * コンテキスト取得: 一致の前後の行を表示（-Context）し、理解を深めます。
            * 逆マッチング: パターンを含まないファイルを検索（-NotMatch）。
            * 出力形式: 生の文字列出力（-Raw）、ブール応答（-Quiet）、または完全な MatchInfo オブジェクト。
            * パターンタイプ: 正規表現（デフォルト）または単純なリテラル文字列マッチング（-SimpleMatch）。
            * エンコーディングサポート: 正確なテキスト処理のためにファイルエンコーディング（-Encoding）を指定。
        * パスタイプの柔軟性: 相対パス、絶対パス、UNC、ルート付きパス、NTFS代替データストリーム（ADS）を処理し、ストリーム内のオプションのコンテンツ検索も可能。
        * マルチドライブサポート: -AllDrives で全ドライブ、または -SearchDrives で特定のドライブ（必要に応じて光学ディスクを含む）を検索。
        * ディレクトリとファイルのフィルタリング: ディレクトリのみ（-Directory）、ファイルとディレクトリ両方（-FilesAndDirectories）、またはコンテンツ一致のあるファイルを検索するオプション。
        * 除外と制限: -Exclude でパターンを除外、最大再帰深度（-MaxRecursionDepth）、ファイルサイズ制限（-MaxFileSize、-MinFileSize）、更新日時フィルター（-ModifiedAfter、-ModifiedBefore）を設定。
        * 出力カスタマイズ: FileInfo/DirectoryInfo オブジェクトの PassThru、相対パス、アテンデッドモードでのハイパーリンク、またはアンテンデッドモードでのプレーンパスをサポート（問題が発生した場合は -NoLinks でアンテンデッドモードを強制）。
        * パフォーマンス最適化: コンテンツ検索ではデフォルトで非テキストファイルをスキップ（-IncludeNonTextFileMatching で上書き）、長いパス（260文字超）を処理、シンボリックリンク/ジャンクションを追跡。
        * 安全機能: タイムアウトサポート（-TimeoutSeconds）、アクセス不可能なアイテムを無視、デフォルトでシステム属性をスキップ、訪問ノード追跡で無限ループを防止。

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | 検索するファイル名またはパターン。デフォルトは '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 検索するファイル名またはパターン。デフォルトは '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | コンテンツ内を検索するための正規表現パターン *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 相対パスを解決するためのベースパス |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ディレクトリタスクの最大並列度 |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | オプション: キャンセルタイムアウト（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | 利用可能なすべてのドライブを検索 |
| `-Directory` | SwitchParameter | — | — | Named | `False` | ディレクトリのみを検索 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | ファイルとディレクトリの両方を含む |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | 代替データストリームを検索結果に含める |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | サブディレクトリに再帰しない |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | ディレクトリトラバーサル中にシンボリックリンクとジャンクションをフォローする |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | 光ディスクドライブを含む |
| `-SearchDrives` | String[] | — | — | Named | — | オプション：特定のドライブを検索する |
| `-DriveLetter` | Char[] | — | — | Named | — | オプション：特定のドライブを検索する |
| `-Root` | String[] | — | — | Named | — | オプション: 特定のディレクトリを検索 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | 名前入力からディレクトリコンポーネントを削除することで、ルートディレクトリのみを検索対象とするよう強制します |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | ファイル内容の検索時に非テキストファイルを含める |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | 無人モードを強制し、リンクを生成しません。 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | ファイルとディレクトリの大文字と小文字の区別を取得または設定します |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | 設定すると、代替データストリーム（ADS）内のコンテンツ検索を実行します。設定しない場合、コンテンツを検索せずにADSファイル情報を出力します。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ディレクトリ走査の最大再帰深度。0は無制限を意味します。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 相対検索でツリーを上方向に検索し続ける最大再帰深度。項目が見つからない場合、0は無効を意味します。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最大サイズ（バイト単位）。0は無制限を意味します。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最小サイズ（バイト単位）。0の場合は最小値なし。 |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | この日時（UTC）以降に変更されたファイルのみを含めてください。 |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | この日時（UTC）より前に変更されたファイルのみを含めてください。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | スキップするファイル属性（例：システム、隠しファイル、なし）。 |
| `-Exclude` | String[] | — | — | Named | — | これらのワイルドカードパターン（例：*.tmp、*\bin\*）に一致するファイルまたはディレクトリを除外します。 |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | このコマンドレットは、テキストの各行で複数の一致を検索することを示します。このパラメーターがない場合、Select-Stringは各行のテキストで最初の一致のみを検索します。 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | このコマンドレットの一致では大文字と小文字が区別されることを示します。既定では、一致で大文字と小文字は区別されません。 *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | パターンに一致する行の前後の指定された行数をキャプチャします。 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 指定されたパターンに一致するカルチャ名を指定します。CultureパラメータはSimpleMatchパラメータと共に使用する必要があります。既定の動作では、現在のPowerShell実行空間（セッション）のカルチャが使用されます。 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | ターゲットファイルのエンコーディングの種類を指定します。Select-String互換の値と拡張された.NETエンコーディングをサポートします。 *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | 各入力ファイルから最初に一致したテキストのみが返されます。これは、正規表現に一致する内容を持つファイルのリストを取得する最も効率的な方法です。 *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | 出力内の一致する文字列の強調表示を無効にします。 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch パラメータは、指定されたパターンと一致しないテキストを検索します。 *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | このコマンドレットは、MatchInfo オブジェクトの代わりに単純な応答を返すことを示します。返される値は、パターンが見つかった場合は $true、見つからなかった場合は $null です。 *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | このコマンドレットは、一致する文字列のみを出力し、MatchInfoオブジェクトは出力しません。これにより、UnixのgrepやWindowsのfindstr.exeコマンドに最も近い動作が実現されます。 *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | このコマンドレットは、正規表現の一致ではなく簡易一致を使用することを示します。簡易一致では、Select-String は Pattern パラメーターのテキストを入力内で検索します。Pattern パラメーターの値を正規表現ステートメントとして解釈しません。 *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

特定の単語を含むファイルを検索する
カレントディレクトリおよびサブディレクトリ内のすべてのファイルから、「translation」という単語を含むものを検索します。

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

バージョン文字列を含むJavaScriptファイルを検索
「Version == `x.y.z`」の形式のバージョン文字列を含むJavaScriptファイルを検索してください。

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

XMLファイルを検索してオブジェクトを渡す
すべての.xmlファイルを検索し、結果をオブジェクトとしてパイプラインに渡します。

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

代替データストリームを含める
すべてのファイルを検索し、結果にそれらの代替データストリームを含めます。

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

すべてのドライブを横断検索
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

再帰深度を制限
テキストファイルを検索するが、再帰は2つのディレクトリレベルまでとする。

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

ファイルサイズでフィルター
1MBより大きく、10MBより小さいファイルを検索します。

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

特定のパターンを除外する
一時ファイルとbinディレクトリを除いて、すべてのファイルを検索します。

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

特定のドライブを検索
C:およびD:ドライブのみ.docxファイルを検索します。

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

大文字小文字を区別したコンテンツ検索
「Error」（大文字小文字を区別）を含むファイルをコンテンツ内で検索します。

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

各行ですべての一致を見つける
各行で「function」の出現箇所すべてを検索します。最初の一致だけでなく。

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

一致部分の周囲のコンテキストを表示
各一致の前に2行、後に3行を表示し、理解を深めます。

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

一致する文字列のみを取得
完全な一致オブジェクトではなく、一致するテキスト文字列のみを返します。

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

単純なブールチェック
パターンが存在するかどうかを確認するために、一致の詳細ではなくtrue/falseを返します。

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

ファイルごとに最初の一致のみを検索
効率的なファイル一覧のために、各ファイルで最初の一致で停止します。

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

リテラル文字列マッチング
SimpleMatchを使用して、正規表現解釈なしで正確なテキストを検索します。

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

パターンを含まないファイルを検索
NotMatchを使用して、指定されたパターンを含まないファイルを見つけます。

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

ファイルエンコーディングを指定
テキスト処理を正確に行うために、特定のエンコーディングのファイルを検索します。

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

カルチャーテキスト比較
国際テキストにはカルチャー固有マッチングをSimpleMatchで使用します。

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

ファイルフィルタを使った複雑なコンテンツ検索
ファイルサイズ、日付、コンテンツフィルタを組み合わせて正確な検索を実行。

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
