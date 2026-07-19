# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data 操作で使用される設定のデータベースパスを設定します。

## Description

* GenXdev.Data モジュールが各種設定の保存やデータ操作に使用するグローバルデータベースパスを構成します。
* 設定は現在のセッション（グローバル変数を使用）に保存され、セッションからクリア（-ClearSession を使用）できます。

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

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

現在のセッション（グローバル変数）でデータベースパスを設定します。

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

位置パラメータを使用してデータベースパスを設定します。

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

現在のセッションのみにパスを設定し、永続化はしません。

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

データベースパスのグローバル変数をクリアします。

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
