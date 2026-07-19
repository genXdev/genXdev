# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> コピー/ペーストなどのファイル操作用にWindowsクリップボードからファイルを取得します。

## Description

* この関数は、ファイル操作のために以前に設定されたWindowsクリップボードからファイルパスを取得します。
* STAとMTAの両方のスレッドモードを自動的に処理し、さまざまなPowerShell実行コンテキストでの互換性を確保します。
* この関数はファイルの存在を検証し、Get-ChildItemやGet-Itemの出力と同様のオブジェクトとして、存在するファイル/ディレクトリのみを返します。

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

現在クリップボードにあるすべてのファイルをファイルシステムオブジェクトとして取得します。

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

クリップボードのファイルを取得し、その完全パスを表示します。

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

クリップボードからテキストファイルのみを取得します。

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
