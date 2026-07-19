# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> 最初に一致するファイルまたはフォルダを見つけ、ロケーションをそれに設定します。

## Description

このコマンドレットは、検索フレーズを使用して最初に一致するフォルダーまたはファイル（オプション）を検索し、そのディレクトリに移動することで、ディレクトリをすばやく変更するのに役立ちます。コンテンツ、ファイル属性、サイズ、変更日、その他多くの条件による高度なフィルタリングをサポートします。

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 検索するファイル名またはパターン。 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | パイプライン入力から検索するファイル名またはパターン。デフォルトは '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | ファイル内容を検索するための正規表現パターン *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | 選択されたカテゴリに属するファイルのみを出力 |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ディレクトリタスクの最大並列度 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | オプション: キャンセルタイムアウト（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 利用可能なすべてのドライブを検索 |
| `-File` | SwitchParameter | — | — | Named | — | ファイル名のみを検索し、最初に見つかったファイルのフォルダに変更 |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | ファイル名の一致を含め、最初に見つかったファイルのフォルダに変更する |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 代替データストリームを検索結果に含める |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | サブディレクトリに再帰しない |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ディレクトリトラバーサル中にシンボリックリンクとジャンクションをフォローする |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | 光ディスクドライブを含む |
| `-SearchDrives` | String[] | — | — | Named | `@()` | オプション：特定のドライブを検索する |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | オプション：特定のドライブを検索する |
| `-Root` | String[] | — | — | Named | `@()` | オプション: 指定された名前と組み合わせて特定のベースフォルダーを検索 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | ファイル内容を検索する際に、非テキストファイル（バイナリ、画像など）を含める |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | ファイルとディレクトリの大文字と小文字の区別を取得または設定します |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | 設定すると、代替データストリーム（ADS）内のコンテンツ検索を実行します。設定しない場合、コンテンツを検索せずにADSファイル情報を出力します。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ディレクトリ走査の最大再帰深度。0は無制限を意味します。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最大サイズ（バイト単位）。0は無制限を意味します。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最小サイズ（バイト単位）。0の場合は最小値なし。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | この日時（UTC）以降に変更されたファイルのみを含めてください。 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | この日時（UTC）より前に変更されたファイルのみを含めてください。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | スキップするファイル属性（例：システム、隠しファイル、なし）。 |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | これらのワイルドカードパターンに一致するファイルまたはディレクトリを除外します（例：*.tmp、*\bin\*）。 |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | このコマンドレットの一致では大文字と小文字が区別されることを示します。既定では、一致で大文字と小文字は区別されません。 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 指定されたパターンに一致するカルチャ名を指定します。CultureパラメータはSimpleMatchパラメータと共に使用する必要があります。既定の動作では、現在のPowerShell実行空間（セッション）のカルチャが使用されます。 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | ターゲットファイルのエンコーディングの種類を指定します。デフォルト値はutf8NoBOMです。 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch パラメータは、指定されたパターンと一致しないテキストを検索します。 *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | このコマンドレットは、正規表現の一致ではなく簡易一致を使用することを示します。簡易一致では、Select-String は Pattern パラメーターのテキストを入力内で検索します。Pattern パラメーターの値を正規表現ステートメントとして解釈しません。 *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Set-Locationの代わりにPush-Locationを使用して、場所を場所スタックにプッシュします。 |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | 設定すると、名前が完全一致する場合のみ考慮されます。デフォルトでは、名前にワイルドカード文字が含まれていない限り、ワイルドカードマッチングが使用されます。 |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

パターン '*.Console' に一致する最初のディレクトリへの変更。

### lcd *.Console

```powershell
lcd *.Console
```

エイリアスを使用して、パターン '*.Console' に一致する最初のディレクトリへの変更。

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

'function' という単語を含む最初の PowerShell ファイルがあるディレクトリに変更します。

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

名前に'test'を含む最初のファイルが含まれているディレクトリへの変更。

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

コンテンツがパターン「1.\d+\.2025」に一致する最初のファイルを含むディレクトリへの変更。

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
