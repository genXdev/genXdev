# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> GenXdev 設定ストアから設定値を取得します。

## Description

* 2段階の設定値取得システムを実装します。
* まずローカルストアから設定値を確認します。
* 見つからない場合は、デフォルトストアを参照します。
* それでも見つからない場合は、指定されたデフォルト値を返します。

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

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

「テーマ」設定を取得し、デフォルトの「ダーク」にフォールバックします。

### Example 2

```powershell
getPreference "Theme" "Dark"
```

エイリアスと位置パラメータを使用します。

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
