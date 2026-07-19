# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> 高度なエラーハンドリングを備えた、ディレクトリの全内容を再帰的に削除します。

## Description

指定されたディレクトリ内のすべてのファイルとサブディレクトリを、深いパスを扱うために逆順削除戦略を使用して安全に削除します。WhatIfサポート、詳細ログ、ロックされたファイルのためのフォールバック削除方法を含みます。

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | クリアするディレクトリパス |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Path パラメータで指定されたルートフォルダも削除します |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)
