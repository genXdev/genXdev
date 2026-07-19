# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> 信頼性の高い削除のために複数のフォールバックメカニズムを備えたファイルやディレクトリを削除します。

## Description

この関数は、ファイルやディレクトリを堅牢に削除する方法を提供します。複数の削除方法を順に試行します。
1. 最適なパフォーマンスのため、System.IOメソッドによる直接削除
2. フォールバックとして、PowerShellのプロバイダー対応Remove-Itemコマンドレット
3. 他の方法が失敗した場合、次回システム再起動時に削除するようマーク
これにより、異なるプロバイダー間でアイテムを削除する際の最大限の信頼性を確保します。

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 削除するアイテムへのパス |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
