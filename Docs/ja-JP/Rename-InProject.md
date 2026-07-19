# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> プロジェクトディレクトリ全体でテキスト置換を実行します。

## Description

プロジェクト内のファイルとディレクトリを再帰的に検索してテキスト置換を実行します。ファイル/ディレクトリ名とファイル内容の両方を処理します。破損を避けるため、一般的なバイナリファイルとリポジトリフォルダー（.git、.svn）はスキップします。ファイル操作にはBOMなしのUTF-8エンコーディングを使用します。大文字小文字を区別する置換モードと区別しない置換モードの両方をサポートします。

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | ディレクトリ、ファイルパス、またはディレクトリ+検索マスク |
| `-FindText` | String | ✅ | — | 1 | — | 検索対象のテキスト（大文字小文字の区別はCaseInsensitiveパラメータで制御） |
| `-ReplacementText` | String | ✅ | — | 2 | — | テキストをマッチに置き換える |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | 大文字と小文字を区別しないテキスト置換を実行 |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
