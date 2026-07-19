# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> GenXdev 設定ストアに設定値を設定します。

## Description

* GenXdev ローカルストアの設定を管理します。
* 新しい設定を追加したり、既存の設定を更新したり、nullや空の値が指定された場合は削除できます。
* 設定は「ローカル」同期で保存されます。

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

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

ローカルストアの「テーマ」設定を「ダーク」に設定します。

### Example 2

```powershell
setPreference Theme Light
```

エイリアスと位置パラメーターを使用して、テーマの設定を指定します。

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
