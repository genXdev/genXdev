# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ファイルやディレクトリを安全にWindowsのごみ箱に移動します。

## Description

* Windows Shell API を使用して、ファイルやディレクトリを安全にごみ箱に移動します。使用中のファイルでも可能です。
* この関数は Shell.Application COM オブジェクトを使用して操作を実行し、適切なリサイクル動作と元に戻す機能を保証します。

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | ごみ箱に移動するパスを指定してください |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

1つのファイルをゴミ箱に移動します。

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

パイプラインとエイリアスを使用して複数のファイルをゴミ箱に移動する。

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
