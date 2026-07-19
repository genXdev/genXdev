# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> セッションストレージとデータベースストアからすべてのプリファレンス名を取得します。

## Description

* セッションストレージ（グローバル変数）と、ローカルおよびデフォルトのプリファレンスストアのキーを組み合わせて、プリファレンス名の一意なリストを取得します。
* どのソースを照会するかを制御するセッション管理パラメータを尊重します。

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

指定されたデータベースパスを使用して、セッションストレージと両方のストアから一意の設定名をソート済み配列で返します。

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

セッションストレージからプリファレンス名のみを返します。

### Example 3

```powershell
getPreferenceNames -SkipSession
```

データベースストアからプリファレンス名のみを返します。

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
