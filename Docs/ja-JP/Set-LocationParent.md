# Set-LocationParent

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `..

## Synopsis

> 現在の場所を親ディレクトリに変更し、その内容を一覧表示します。

## Description

* ファイルシステム階層内で1つ上のディレクトリレベルに移動します。
* 新しい現在のディレクトリの内容を表示します。
* 便利な'..'エイリアスを提供し、ディレクトリを素早く移動できます。

## Syntax

```powershell
Set-LocationParent [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-LocationParent
```

親ディレクトリに移動し、その内容を一覧表示します。

### Example 2

```powershell
..
```

エイリアスを使用して親ディレクトリに移動します。

## Related Links

- [Set-LocationParent on GitHub](https://github.com/genXdev/genXdev)
