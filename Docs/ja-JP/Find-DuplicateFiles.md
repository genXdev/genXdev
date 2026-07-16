# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | 検索するファイル名またはパターン。デフォルトは '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | パイプライン入力から検索するファイル名またはパターン。デフォルトは '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | コンテンツ内を検索するための正規表現パターン *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | 相対パスを解決するためのベースパス |
| `-Category` | String[] | — | — | Named | — | 選択されたカテゴリに属するファイルのみを出力 |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ディレクトリタスクの最大並列度 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | オプション: キャンセルタイムアウト（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 利用可能なすべてのドライブを検索 |
| `-Directory` | SwitchParameter | — | — | Named | — | ディレクトリのみを検索 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | ファイルとディレクトリの両方を含む |
| `-PassThru` | SwitchParameter | — | — | Named | — | {
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
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 代替データストリームを検索結果に含める |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | サブディレクトリに再帰しない |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ディレクトリトラバーサル中にシンボリックリンクとジャンクションをフォローする |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | 光ディスクドライブを含む |
| `-SearchDrives` | String[] | — | — | Named | `@()` | オプション：特定のドライブを検索する |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | オプション：特定のドライブを検索する |
| `-Root` | String[] | — | — | Named | `@()` | オプション: 特定のディレクトリを検索 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | 名前入力からディレクトリコンポーネントを削除することで、ルートディレクトリのみを検索対象とするよう強制します |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | ファイル内容の検索時に非テキストファイルを含める |
| `-NoLinks` | SwitchParameter | — | — | Named | — | 無人モードを強制し、リンクを生成しません。 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | ファイルとディレクトリの大文字と小文字の区別を取得または設定します |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | 設定した場合、代替データストリーム内のコンテンツ検索を実行します |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ディレクトリ走査の最大再帰深度。0は無制限を意味します。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | ツリーを上方に検索して継続を探す最大再帰深度。0は無効を意味します。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最大サイズ（バイト単位）。0は無制限を意味します。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 結果に含めるファイルの最小サイズ（バイト単位）。0の場合は最小値なし。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | この日時（UTC）より後に変更されたファイルのみを含める |
| `-ModifiedBefore` | DateTime | — | — | Named | — | この日時（UTC）より前に変更されたファイルのみを含める |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | スキップするファイル属性（例: システム、隠しファイル、なし） |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | これらのワイルドカードパターンに一致するファイルまたはディレクトリを除外する |
| `-AllMatches` | SwitchParameter | — | — | Named | — | テキストの各行で複数の一致を検索する *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | マッチングは大文字と小文字を区別します *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | マッチ周辺のコンテキスト行を取得します *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | パターンマッチングに使用するカルチャ名 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | ターゲットファイルのエンコーディングを指定します *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | ファイルごとに最初の一致のみが返されます *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | 出力内の一致する文字列の強調表示を無効にします *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch パラメータは、パターンに一致しないテキストを検索します *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | 同じファイル名と内容で開始されていれば、異なるサイズのファイルが返されます。これは、ダウンロード/コピー操作の破損を検出します。 |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | ファイルのバイト長をすばやく比較します。ファイルの内容は比較されないため、高速なインデックス作成や重複検索に使用されます。 |

## Related Links

- [Find-DuplicateFiles on GitHub](https://github.com/genXdev/genXdev)
