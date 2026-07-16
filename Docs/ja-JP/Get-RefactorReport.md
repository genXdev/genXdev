# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | リファクタリングの名前、ワイルドカードを受け入れます 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定ファイルデータベースへのパスを指定します。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 設定されている場合、リファクタデータにはセッションキャッシュのみを使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 設定されている場合、実行前にセッションキャッシュをクリアします。 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 設定されている場合、セッションキャッシュの読み込みをスキップします。 |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
