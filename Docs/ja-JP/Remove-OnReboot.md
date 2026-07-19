# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 次のシステム起動時に削除するファイルまたはディレクトリをマークします。

## Description

* Windows APIを使用して、次回起動時にファイルを削除するようにマークします。
* ロックされたファイルは、まず一時的な名前に変更しようと試み、ファイルシステムの整合性を維持するためにすべての移動を追跡します。
* 名前の変更に失敗した場合、-MarkInPlaceパラメータを使用して元の場所でファイルをマークできます。

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | 削除対象としてマークするファイル/ディレクトリへのパス |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | 名前を変更せずに削除するファイルをマークします |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

次回のシステム起動時にロックされたファイルを削除するようマークします。

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

名前を変更できないファイルにはMarkInPlaceを使用して、複数のファイルを削除対象としてマークします。

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
