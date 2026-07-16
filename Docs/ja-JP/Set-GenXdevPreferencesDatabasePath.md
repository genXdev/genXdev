# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | プリファレンスデータファイルが保存されているデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 指定された場合、設定は現在のセッション（グローバル変数）にのみ保存され、設定ファイルに保存されません。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 指定された場合、永続的な設定に影響を与えずにセッション設定（グローバル変数）のみをクリアします。 |

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
