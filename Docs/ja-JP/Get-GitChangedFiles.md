# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Gitリポジトリ内の変更されたファイルのリストを取得する。

## Description

この関数は、現在のGitリポジトリで変更されたファイルのリストを取得します。変更、追加、または削除されたファイルを識別するために使用できます。デフォルトでは、.\ プレフィックス付きの相対パスを返します。FileInfoオブジェクトを取得するには -PassThru を使用します。

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | パス文字列ではなく、FileInfoオブジェクト（Get-ChildItemのような）を返します。 |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

."Modules\GenXdev.AI\3.26.2026\README.md" のような相対パスを返します。

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

変更された各ファイルのFileInfoオブジェクトを返します。

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
