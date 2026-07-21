# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> マイクロソフトのRobust Copy（RoboCopy）ユーティリティ用のPowerShellラッパーを提供します。

## Description

RoboCopyコマンドラインユーティリティの包括的なラッパーであり、堅牢なファイルおよびディレクトリコピー機能を提供します。この関数は、RoboCopyの広範な機能セットをPowerShellフレンドリーなパラメーターを通じて公開し、その強力な機能の大部分を維持します。

主な機能：
- ミラーオプションを使用したディレクトリ同期
- 拡張パス名（256文字以上）のサポート
- セキュリティ設定の保持
- 高度なファイル属性処理
- シンボリックリンクとジャンクションポイントの管理
- 継続的同期のためのモニターモード
- 大容量ファイルのパフォーマンス最適化
- ネットワーク圧縮のサポート
- 障害デバイス用のリカバリーモード

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
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | コピーしたファイルとディレクトリを配置する宛先ディレクトリ。
このディレクトリがまだ存在しない場合、不足しているディレクトリはすべて作成されます。
既定値 = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | コピーするファイルを選択するためのオプションの検索マスク。
既定値 = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | 指定されたディレクトリの内容を同期します。送信先に存在し、送信元に存在しないファイルやディレクトリも削除します。 |
| `-Move` | SwitchParameter | — | — | Named | — | コピーではなく、すべてのファイルを移動元から移動先へ移動します。 |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | ファイルとディレクトリの所有権、セキュリティ記述子、および監査情報もコピーします。 |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | ソースからファイルのみをコピーし、サブディレクトリをスキップします（再帰なし） *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | 空の場合はディレクトリをコピーしない *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | ディレクトリツリーのみ作成 *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | ディレクトリツリーと長さゼロのファイルのみを作成する |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | シンボリックリンク、ジャンクション、またはそれらが指す内容をコピーしない |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | ファイルシンボリックリンクはコピーしませんが、ディレクトリジャンクションはたどります。 |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | シンボリックリンクが指す先のコンテンツをコピーする代わりに、リンク自体をコピーします。 |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | ディレクトリジャンクション（フォルダのシンボリックリンク）またはそれが指すコンテンツをコピーしない *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | ジャンクションポイントが参照するコンテンツをコピーする代わりに、ジャンクション自体をコピーする *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 転送先のファイルよりも古い場合でも、すべてのファイルをコピーします。 |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | アーカイブ属性が設定されているファイルのみをコピーします。 |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | アーカイブ属性が設定されたファイルのみをコピーするだけでなく、コピー後にソース上のこの属性をリセットします |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | これらの名前/パス/ワイルドカードのいずれかに一致するファイルを除外します 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | これらの名前/パス/ワイルドカードのいずれかに一致するディレクトリをすべて除外する *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | これらの属性がすべて設定されているファイルのみをコピーします [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | 以下の属性が設定されているファイルを除外します: [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | コピーされたファイルに指定の属性を設定します [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | コピーされたファイルから指定された属性を削除します [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | ソース ディレクトリ ツリーの上位 n レベルのみをコピーします *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | サイズがnバイト未満のファイルをスキップします |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | n バイトより大きいファイルをスキップする |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | 次の条件を満たさないファイルをスキップする: n 日以上経過している、または n 日付より前に作成されている（n < 1900 の場合は n 日、それ以外の場合は n = YYYYMMDD 日付） |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | 次の条件を満たすファイルをスキップします: n 日より古い、または n 日より後に作成されたファイル（n < 1900 の場合は n を日数とし、それ以外の場合は n を YYYYMMDD 形式の日付とします） |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | 最終アクセスから n 日以内、または n 日付より前のファイルをスキップします (n が 1900 未満の場合は n 日、それ以外は n = YYYYMMDD 日付) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | n 日間アクセスがないファイル、または n 日付以降（n < 1900 の場合は n = n 日、それ以外は n = YYYYMMDD 形式の日付）にアクセスがないファイルをスキップします。 |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | コピー中にI/Oエラーが発生した場合、すぐに一時停止して再試行します。 |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | コピー後もアクティブ状態を維持し、デフォルトのしきい値10分経過後に追加の変更をコピーします。 |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | 変更された場合、N分後に再実行する |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | n 個以上の変更が確認された場合に再実行する |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | 実行時間 - 新しいコピーが開始される可能性のある時間。開始時刻、範囲 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | 実行時間 - 新しいコピーが開始される時間帯、終了時間、範囲 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | 指定された場合、ログは指定されたファイルにも出力されます。 |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | 指定されたログファイルに追記せず、上書きする |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | 出力にスキャンされたすべてのディレクトリ名を含める |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | 出力にスキャンされたすべてのファイル名を含めます（スキップされたものも含む） |
| `-Unicode` | SwitchParameter | — | — | Named | — | 出力ステータスをUNICODEとして |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | 大きなファイルのコピーを最適化できるようにします |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | マルチスレッドコピーによるパフォーマンスの最適化 |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | サーバー間でファイルをコピーする際に、帯域幅と時間を節約するために可能であれば圧縮を使用します。 |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | 設定すると、既定の2秒の許容範囲ではなく、ミリ秒単位のタイムスタンプ一致を使用します。 |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | 指定されたrobocopyパラメータを上書き、削除、または追加します。

使用方法：

パラメータを追加または置換：

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

パラメータを削除：

    -Override -/Switch

複数の上書き：

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> ディレクトリ、ファイルパス、またはディレクトリ+検索マスク

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> コピーしたファイルとディレクトリを配置する宛先ディレクトリ。
このディレクトリがまだ存在しない場合、不足しているディレクトリはすべて作成されます。
既定値 = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> コピーするファイルを選択するためのオプションの検索マスク。
既定値 = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> 指定されたディレクトリの内容を同期します。送信先に存在し、送信元に存在しないファイルやディレクトリも削除します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> コピーではなく、すべてのファイルを移動元から移動先へ移動します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> ファイルとディレクトリの所有権、セキュリティ記述子、および監査情報もコピーします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> ソースからファイルのみをコピーし、サブディレクトリをスキップします（再帰なし）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> 空の場合はディレクトリをコピーしない

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> ディレクトリツリーのみ作成

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> ディレクトリツリーと長さゼロのファイルのみを作成する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> シンボリックリンク、ジャンクション、またはそれらが指す内容をコピーしない

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> ファイルシンボリックリンクはコピーしませんが、ディレクトリジャンクションはたどります。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> シンボリックリンクが指す先のコンテンツをコピーする代わりに、リンク自体をコピーします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> ディレクトリジャンクション（フォルダのシンボリックリンク）またはそれが指すコンテンツをコピーしない

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> ジャンクションポイントが参照するコンテンツをコピーする代わりに、ジャンクション自体をコピーする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> 転送先のファイルよりも古い場合でも、すべてのファイルをコピーします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> アーカイブ属性が設定されているファイルのみをコピーします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> アーカイブ属性が設定されたファイルのみをコピーするだけでなく、コピー後にソース上のこの属性をリセットします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> これらの名前/パス/ワイルドカードのいずれかに一致するファイルを除外します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> これらの名前/パス/ワイルドカードのいずれかに一致するディレクトリをすべて除外する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> これらの属性がすべて設定されているファイルのみをコピーします [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> 以下の属性が設定されているファイルを除外します: [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> コピーされたファイルに指定の属性を設定します [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> コピーされたファイルから指定された属性を削除します [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> ソース ディレクトリ ツリーの上位 n レベルのみをコピーします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> サイズがnバイト未満のファイルをスキップします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> n バイトより大きいファイルをスキップする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> 次の条件を満たさないファイルをスキップする: n 日以上経過している、または n 日付より前に作成されている（n < 1900 の場合は n 日、それ以外の場合は n = YYYYMMDD 日付）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> 次の条件を満たすファイルをスキップします: n 日より古い、または n 日より後に作成されたファイル（n < 1900 の場合は n を日数とし、それ以外の場合は n を YYYYMMDD 形式の日付とします）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> 最終アクセスから n 日以内、または n 日付より前のファイルをスキップします (n が 1900 未満の場合は n 日、それ以外は n = YYYYMMDD 日付)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> n 日間アクセスがないファイル、または n 日付以降（n < 1900 の場合は n = n 日、それ以外は n = YYYYMMDD 形式の日付）にアクセスがないファイルをスキップします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> コピー中にI/Oエラーが発生した場合、すぐに一時停止して再試行します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> コピー後もアクティブ状態を維持し、デフォルトのしきい値10分経過後に追加の変更をコピーします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> 変更された場合、N分後に再実行する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> n 個以上の変更が確認された場合に再実行する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> 実行時間 - 新しいコピーが開始される可能性のある時間。開始時刻、範囲 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> 実行時間 - 新しいコピーが開始される時間帯、終了時間、範囲 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> 指定された場合、ログは指定されたファイルにも出力されます。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> 指定されたログファイルに追記せず、上書きする

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> 出力にスキャンされたすべてのディレクトリ名を含める

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> 出力にスキャンされたすべてのファイル名を含めます（スキップされたものも含む）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> 出力ステータスをUNICODEとして

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> 大きなファイルのコピーを最適化できるようにします

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> マルチスレッドコピーによるパフォーマンスの最適化

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> サーバー間でファイルをコピーする際に、帯域幅と時間を節約するために可能であれば圧縮を使用します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> 設定すると、既定の2秒の許容範囲ではなく、ミリ秒単位のタイムスタンプ一致を使用します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> 指定されたrobocopyパラメータを上書き、削除、または追加します。

使用方法：

パラメータを追加または置換：

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

パラメータを削除：

    -Override -/Switch

複数の上書き：

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-Item.md)
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-TextFileAtomic.md)
