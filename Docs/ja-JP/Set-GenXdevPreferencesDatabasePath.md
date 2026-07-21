# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXDev.Data 操作で使用される設定のデータベースパスを設定します。

## Description

* GenXdev.Data モジュールがさまざまな設定の保存やデータ操作で使用するグローバルデータベースパスを構成します。
* 設定は現在のセッション（グローバル変数を使用）に保存され、セッションからクリアすることができます（-ClearSession を使用）。

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | ユーザー設定データファイルが配置されているデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データ設定（言語、データベースパスなど）にセッションに保存された代替設定を使用しないでください。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 指定した場合、設定を現在のセッション（グローバル変数）にのみ保存し、設定ファイルに保持しません。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 指定した場合、永続的な設定には影響を与えず、セッション設定（グローバル変数）のみをクリアします。 |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

現在のセッションでデータベースのパスを設定します（グローバル変数）。

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

位置パラメータを使用してデータベースのパスを設定します。

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

現在のセッションのみパスを設定し、永続化しません。

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

データベースパスのグローバル変数をクリアします。

## Parameter Details

### `-PreferencesDatabasePath <String>`

> ユーザー設定データファイルが配置されているデータベースパス

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> データ設定（言語、データベースパスなど）にセッションに保存された代替設定を使用しないでください。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 指定した場合、設定を現在のセッション（グローバル変数）にのみ保存し、設定ファイルに保持しません。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> 指定した場合、永続的な設定には影響を与えず、セッション設定（グローバル変数）のみをクリアします。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevPreference.md)
