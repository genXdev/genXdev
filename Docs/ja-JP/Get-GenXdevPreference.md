# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 取得する設定の名前 |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | 設定が見つからない場合のデフォルト値 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
