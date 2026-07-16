# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 設定するプリファレンスの名前 |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | プリファレンスに保存する値 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
