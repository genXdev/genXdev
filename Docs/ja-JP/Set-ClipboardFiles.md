# Set-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `setclipfiles, `scbf

## Synopsis

> ファイル操作（コピー/貼り付けなど）のためにファイルをWindowsクリップボードに設定します。

## Description

この関数は、1つ以上のファイルパスをWindowsクリップボードにコピーし、エクスプローラでの貼り付けなどのファイル操作を可能にします。STAとMTAの両方のスレッドモードを自動的に処理し、さまざまなPowerShell実行コンテキストでの互換性を確保します。関数は、クリップボードにパスを追加する前にファイルの存在を検証します。

## Syntax

```powershell
Set-ClipboardFiles -InputObject <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | クリップボードに追加するファイルパスの配列 |

## Examples

### Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt" Sets two files to the clipboard using full parameter names.

```powershell
Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt"
Sets two files to the clipboard using full parameter names.
```

### "C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles Sets files to clipboard using pipeline input.

```powershell
"C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles
Sets files to clipboard using pipeline input.
```

### ls * -file | select -first 5 | Set-ClipboardFiles Sets files to clipboard using pipeline input, selecting the first 5 files

```powershell
ls * -file | select -first 5 | Set-ClipboardFiles
Sets files to clipboard using pipeline input, selecting the first 5 files
```

## Related Links

- [Set-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
