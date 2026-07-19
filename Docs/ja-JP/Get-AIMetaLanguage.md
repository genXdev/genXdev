# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> 画像メタデータ操作に設定されたデフォルト言語を取得します。

## Description

* このコマンドレットは、画像メタデータ操作においてGenXdev.AIモジュールが使用するデフォルト言語を取得します。
* 最初にグローバル変数を確認し（SkipSessionが指定されていない場合）、次に永続的な設定にフォールバックし、最終的にシステムのデフォルトを使用します。

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | イメージメタデータ操作のデフォルト言語 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存されている代替設定を使用して、AIの言語や画像コレクションなどの設定を変更します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | AIの設定（言語、画像コレクションなど）にセッションに保存された代替設定を使用しない |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

グローバル変数または設定から現在構成されている言語を取得します。

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

セッションを無視して、永続的な設定から構成された言語を取得します。

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

セッション設定をクリアし、永続設定から言語を取得します。

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
