# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ファイルシステムのリンクと参照を保持しながらファイルとディレクトリを移動します。

## Description

* WindowsのMoveFileEx APIを使用して、リンク追跡を有効にした状態でファイルとディレクトリを移動し、ファイルシステムの参照を維持します。
* ソースパスがGit管理下にある場合、git mvを使用してGit内で名前変更を追跡しようとします。
* Gitが利用できない場合やgit mvが失敗した場合は、MoveFileExにフォールバックします。

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 移動するファイル/ディレクトリのソースパス |
| `-Destination` | String | ✅ | — | 1 | — | 移動先のパス |
| `-Force` | SwitchParameter | — | — | Named | `False` | 宛先が存在する場合は上書きする |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

ファイルシステムのリンクとGitの追跡を維持しながらファイルを移動します。

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

ディレクトリを移動し、移動先にディレクトリが存在する場合は上書きします。

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
