# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> GenXdev の設定ストアにデフォルトのプリファレンス値を設定します。

## Description

* GenXdev のプリファレンスシステムにおけるデフォルトプリファレンスを管理します。
* 値の保存、値が空の場合のプリファレンス削除、および変更のシステム全体への同期を処理します。
* null 値の場合は、該当するプリファレンスを完全に削除することで対応します。

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | preferencesに設定するpreferenceの名前 |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | プリファレンスに保存する値 |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | 設定データファイルのデータベースパス |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

デフォルトのテーマ設定を「ダーク」に設定します。

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

エイリアスを使用して、デフォルトでメール通知を無効にします。

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
