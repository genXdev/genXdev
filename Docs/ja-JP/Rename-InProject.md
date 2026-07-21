# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip`

## Synopsis

> プロジェクト ディレクトリ全体でテキストの置換を実行します。

## Description

プロジェクト内のファイルとディレクトリを再帰的に検索し、テキスト置換を実行します。ファイル/ディレクトリ名とファイル内容の両方を処理します。一般的なバイナリファイルやリポジトリフォルダ（.git、.svn）は破損を避けるためにスキップします。ファイル操作ではBOMなしのUTF-8エンコーディングを使用します。大文字と小文字を区別する置換モードと区別しない置換モードの両方をサポートします。

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | ディレクトリ、ファイルパス、またはディレクトリ+検索マスク |
| `-FindText` | String | ✅ | — | 1 | — | 検索するテキスト（大文字と小文字の区別はCaseInsensitiveパラメーターで制御） |
| `-ReplacementText` | String | ✅ | — | 2 | — | 一致するテキストを置き換える対象 |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | 大文字と小文字を区別しないテキスト置換を実行します |

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

## Parameter Details

### `-Source <String>`

> ディレクトリ、ファイルパス、またはディレクトリ+検索マスク

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `src`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FindText <String>`

> 検索するテキスト（大文字と小文字の区別はCaseInsensitiveパラメーターで制御）

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `find`, `what`, `from` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplacementText <String>`

> 一致するテキストを置き換える対象

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `into`, `txt`, `to` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseInsensitive`

> 大文字と小文字を区別しないテキスト置換を実行します

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-OnReboot.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Write-TextFileAtomic.md)
