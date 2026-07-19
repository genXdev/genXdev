# Move-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 検索条件に一致するファイルを日付ベースのサブフォルダに移動します。

## Description

`Find-Item`と同じパラメーターセットを使用してファイルを検索し、一致した各ファイルを、そのファイルの作成日またはメディア日付に基づいて`TargetFolder`のサブフォルダーに移動します。このコマンドレットは、コンテンツマッチング、ドライブ全体の検索、多数のフィルターをサポートしています。移動後、空になったソースフォルダーを必要に応じて削除することもできます。

指定されたファイルの正確な作成日付またはキャプチャ日付を判別するために、複数の戦略を試みます。戦略には、画像のEXIFメタデータの読み取り、ファイル名からの日付/時刻情報の解析、および他の信頼できる情報がない場合のファイルの最終更新日時の使用が含まれます。

## Syntax

```powershell
Move-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Move-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | 一致したファイルが日付ベースのサブフォルダに移動されるターゲットルートフォルダ |
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
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | ファイル移動後に空のソースディレクトリを削除する |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | ターゲットフォルダ名の日付構文 |

## Examples

### Move all pictures and videos to the corresponsing Android Onedrive App Image backup folders     Move-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `                            -SourceFolder ~\Pictures\*, ~\onedrive\*, ~\desktop\* `                            -FollowSymlinkAndJunctions `                            -DeleteEmptyDirs `                            -Category 'Pictures', 'Videos' `                            -Confirm:$false

```powershell
Move all pictures and videos to the corresponsing Android Onedrive App Image backup folders
    Move-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `
                           -SourceFolder ~\Pictures\*, ~\onedrive\*, ~\desktop\* `
                           -FollowSymlinkAndJunctions `
                           -DeleteEmptyDirs `
                           -Category 'Pictures', 'Videos' `
                           -Confirm:$false
```

### Move all jpg files from the current directory into date folders under `D:\Archive` (dry run):

```powershell
Move all jpg files from the current directory into date folders under
`D:\Archive` (dry run):
```

Move-FilesToDateFolder -TargetFolder 'D:\Archive' -Name '*.jpg' -WhatIf

### Move all files across drives matching `*.mp4` into monthly folders and delete empty source folders:

```powershell
Move all files across drives matching `*.mp4` into monthly folders and delete
empty source folders:
```

Move-FilesToDateFolder -TargetFolder 'E:\Media\Videos' -Name '.\*.mp4' -DeleteEmptyDirs

## Related Links

- [Move-FilesToDateFolder on GitHub](https://github.com/genXdev/genXdev)
