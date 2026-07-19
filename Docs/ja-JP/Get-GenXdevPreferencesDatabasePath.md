# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data の操作で使用されるプリファレンスデータファイル用の設定済みデータベースパスを取得します。

## Description

* GenXdev.Data モジュールが各種設定の保存やデータ操作に使用するグローバルデータベースパスを取得します。
* 最初にグローバル変数（SkipSessionが指定されていない場合）を確認し、次に永続的な設定にフォールバックし、最後にシステムのデフォルト値を使用します。

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | オプションのデータベースパス上書き |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | セッションに保存された代替設定を、言語やデータベースパスなどのデータ設定に使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得してください |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データの設定（言語、データベースパスなど）に対して、セッションに保存された代替設定を使用しないでください。 |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

グローバル変数または環境設定からデータベースのパスを取得します。

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

セッション変数をスキップし、永続的な設定を使用します。

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

パスを取得する前にセッション設定をクリアします。

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
