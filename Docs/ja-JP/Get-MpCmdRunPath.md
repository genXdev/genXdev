# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Windows Defender の MpCmdRun.exe 実行可能ファイルへのパスを取得します。

## Description

* Windows Defender コマンドラインユーティリティ（MpCmdRun.exe）の完全パスを特定し、返します。
* このコマンドレットは、Program Files の標準インストール場所を確認し、ファイルが見つからない場合は適切なエラーハンドリングを提供します。

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Windows Defender コマンドラインツールへの完全パスを取得します。

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
