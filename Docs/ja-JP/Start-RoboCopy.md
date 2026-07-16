# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | ディレクトリ、ファイルパス、またはディレクトリ+検索マスク |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | コピー先のファイルとディレクトリの配置先ディレクトリ。
このディレクトリがまだ存在しない場合、不足しているディレクトリはすべて作成されます。
デフォルト値 = "." |
| `-Files` | String[] | — | — | 2 | `@()` | コピーするファイルを選択するためのオプションの検索マスク。
デフォルト値 = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | 指定されたディレクトリの内容を同期します。送信先に存在するが送信元に存在しないファイルやディレクトリも削除されます。 |
| `-Move` | SwitchParameter | — | — | Named | — | ソースから宛先に全てのファイルをコピーする代わりに移動します |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | また、ファイルとディレクトリの所有権、セキュリティ記述子、監査情報もコピーします。 |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | ソースからファイルのみをコピーし、サブディレクトリはスキップします（再帰は行いません） *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | 空になるディレクトリはコピーしません *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Directory tree created *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Create directory tree and zero-length files only |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | シンボリックリンク、ジャンクション、またはそのリンク先の内容をコピーしないでください |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | ファイルのシンボリックリンクはコピーしませんが、ディレクトリジャンクションはたどります。 |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | シンボリックリンクが指すコンテンツをコピーする代わりに、リンク自体をコピーします |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | ディレクトリジャンクション（フォルダのシンボリックリンク）やそのリンク先の内容をコピーしないでください *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | 接合部が指す内容をコピーするのではなく、接合部自体をコピーする *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 宛先にあるファイルよりも古い場合でも、すべてのファイルをコピーします。 |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | アーカイブ属性が設定されたファイルのみをコピーします |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | アーカイブ属性が設定されたファイルのみをコピーし、コピー後はソース上のこの属性をリセットします。 |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | これらの名前/パス/ワイルドカードのいずれかに一致するファイルを除外する 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | これらの名前/パス/ワイルドカードのいずれかに一致するディレクトリをすべて除外します *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | これらの属性 [RASHCNETO] がすべて設定されているファイルのみをコピーします |
| `-AttributeExcludeFilter` | String | — | — | Named | — | 次の属性が設定されているファイルを除外 [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | コピーされたファイルに指定された属性を設定します [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | コピーされたファイルから指定された属性を削除します [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | ソース ディレクトリ ツリーの上位 n レベルだけをコピーします *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | 少なくともnバイトのサイズがないファイルはスキップする |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | n バイトより大きいファイルをスキップします |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | 少なくとも次の期間に達していないファイルはスキップします：n 日経過、または n 日付より前に作成されたもの（n < 1900 の場合は n 日、それ以外の場合は n = YYYYMMDD 形式の日付） |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | n 日より古いファイル、または n 日付より後に作成されたファイルをスキップ (n < 1900 の場合は n 日、それ以外の場合は n = YYYYMMDD 日付) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | 次の期間内にアクセスされたファイルをスキップします: n 日以内 または n 日付より前（n < 1900 の場合は n 日、それ以外の場合は YYYYMMDD 形式の日付） |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | 次にアクセスしてからスキップされたファイル：n日後 OR n日後（n < 1900の場合はn日、それ以外の場合はn = YYYYMMDD日付） |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | コピー中にI/Oエラーが発生した場合は、すぐに一時停止して再試行します。 |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | コピー後もアクティブのままで、デフォルトのしきい値である10分後に追加の変更をコピーします。 |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | 変更がある場合、n分後に再実行 |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | n 回以上の変更が確認された場合に再実行 |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | 実行時間 - 新しいコピーが開始可能な時間。開始時刻、範囲 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | 稼働時間 - 新規コピーを開始できる時間帯、終了時間、範囲 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | 指定された場合、ログは指定されたファイルにも出力されます |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | 指定されたログファイルに追記せず、代わりに上書きします |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | 出力にすべてのスキャンされたディレクトリ名を含める |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | スキャンされたすべてのファイル名を出力に含めてください（スキップされたものも含む）。 |
| `-Unicode` | SwitchParameter | — | — | Named | — | アップデート中 |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | 大きなファイルのコピーを最適化します |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | マルチスレッドコピーによるパフォーマンスの最適化 |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | 可能な場合は、サーバー間でファイルをコピーする際に圧縮を使用して帯域幅と時間を節約します。 |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | 設定時は、デフォルトの2秒トレランスの代わりにミリ秒タイムスタンプマッチングを使用します |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | 指定されたrobocopyパラメータを上書き、削除、または追加します。

使用方法：

パラメータを追加または置換：

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

パラメータを削除：

    -Override -/Switch

複数の上書き：

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
