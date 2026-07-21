# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> GenXdev プリファレンス ストアからプリファレンス値を削除します。

## Description

* ローカルストアから、必要に応じてデフォルトストアからも設定値を削除します。
* ローカルのみ削除するパラメーターセットと、ローカルとデフォルトの両方のストアから削除する別のパラメーターセットを提供します。
* デフォルトストアを変更する際に、適切な同期を確保します。

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 削除する基本設定の名前 |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | 既定値からも設定を削除するように切り替える |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 言語、データベースパスなどのデータ設定に、セッションに保存されている代替設定を使用します。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | セッション設定（グローバル変数）をクリアしてから取得する |
| `-PreferencesDatabasePath` | String | — | — | Named | — | ユーザー設定データファイルのデータベースパス |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | データ設定（言語、データベースパスなど）にセッションに保存された代替設定を使用しないでください。 |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

ローカルストアからのみ、「テーマ」の設定を削除します。

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

ローカルストアとデフォルトストアの両方から「テーマ」のユーザー設定を削除します。

## Parameter Details

### `-Name <String>`

> 削除する基本設定の名前

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> 既定値からも設定を削除するように切り替える

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-PreferencesDatabasePath <String>`

> ユーザー設定データファイルのデータベースパス

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-GenXdevPreferencesDatabasePath.md)
