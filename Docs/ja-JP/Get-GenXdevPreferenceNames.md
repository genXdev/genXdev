# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
