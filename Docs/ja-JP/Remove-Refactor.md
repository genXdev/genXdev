# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-RemoveDefault] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | リファクタリングの名前、ワイルドカードを受け入れます 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | — | 標準リファクタリングセットも削除するように切り替える |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | 設定が見つからない場合のデフォルト値 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-SkipSession` | SwitchParameter | — | — | Named | — | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
