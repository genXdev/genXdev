# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data操作で使用されるユーザー設定データファイルの構成済みデータベースパスを取得します。

## Description

* GenXdev.Dataモジュールが各種設定保存やデータ操作に使用するグローバルデータベースパスを取得します。
* 最初にグローバル変数を確認し（SkipSessionが指定されている場合は除く）、次に永続的な設定にフォールバックし、最後にシステムのデフォルトを使用します。

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | オプションのデータベースパスオーバーライド |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 言語、データベースパスなどのデータ設定に、セッションに保存されている代替設定を使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得する |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データ設定（言語、データベースパスなど）にセッションに保存された代替設定を使用しないでください。 |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

グローバル変数または設定からデータベースのパスを取得します。

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

## Parameter Details

### `-PreferencesDatabasePath <String>`

> オプションのデータベースパスオーバーライド

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 言語、データベースパスなどのデータ設定に、セッションに保存されている代替設定を使用します。

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

> セッション設定（グローバル変数）をクリアしてから取得する

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreferenceNames.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevPreferencesDatabasePath.md)
