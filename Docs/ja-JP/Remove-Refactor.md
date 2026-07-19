# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdevの設定システムからリファクタリングセットを削除します。

## Description

GenXdev設定システムにおいて、指定されたエントリを削除することでリファクタリングセットを管理します。カスタムセットとデフォルトセットの両方を対象とします。デフォルトセットは明示的に削除が許可されない限り保護されます。すべてのリファクタリングセットは設定システム内でプレフィックス「refactor_set_」によって識別されます。

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | リファクタリングの名前、ワイルドカードを受け入れます 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | 標準リファクタリングセットも削除するように切り替える |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 設定データファイルのデータベースパス |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | 設定が見つからない場合のデフォルト値 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-SkipSession` | SwitchParameter | — | — | Named | — | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
