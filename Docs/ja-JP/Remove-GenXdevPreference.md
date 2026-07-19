# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> GenXdev 設定ストアから設定値を削除します。

## Description

* ローカルストアから設定値を削除し、必要に応じてデフォルトストアからも削除します。
* ローカルのみ削除する場合と、ローカルとデフォルトの両方から削除する場合の2つのパラメータセットを提供します。
* デフォルトストアを変更する際には、適切な同期を保証します。

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 削除する設定の名前 |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | 切り替えて、デフォルトからも設定を削除する |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

ローカルストアからのみ「テーマ」設定を削除します。

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

ローカルストアとデフォルトストアの両方から「テーマ」設定を削除します。

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
