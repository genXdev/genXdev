# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Git リポジトリ内の変更されたファイルの一覧を取得します。

## Description

この関数は、現在のGitリポジトリで変更されたファイルのリストを取得します。変更、追加、削除されたファイルを識別するために使用できます。デフォルトでは、先頭に .\ が付いた相対パスを返します。FileInfoオブジェクトを取得するには、-PassThru を使用してください。

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | パス文字列ではなく、FileInfoオブジェクト（Get-ChildItemと同様）を返します。 |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

.\Modules\GenXdev.AI\3.26.2026\README.md のような相対パスを返します。

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

変更された各ファイルのFileInfoオブジェクトを返します。

## Parameter Details

### `-PassThru`

> パス文字列ではなく、FileInfoオブジェクト（Get-ChildItemと同様）を返します。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/PermanentlyDeleteGitFolders.md)
