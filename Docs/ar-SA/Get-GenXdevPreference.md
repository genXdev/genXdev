# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> يسترد قيمة تفضيل من مخزن تفضيلات GenXdev.

## Description

* ينفذ نظام استرجاع تفضيلات ذو مستويين.
* يتحقق أولاً من المخزن المحلي لقيمة التفضيل.
* إذا لم يتم العثور عليها، يتراجع إلى المخزن الافتراضي.
* إذا لم يتم العثور عليها أيضًا، يعيد القيمة الافتراضية المقدمة.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | اسم التفضيل الذي ترغب في استرداده |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | القيمة الافتراضية إذا لم يتم العثور على التفضيل |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة ومسارات قواعد البيانات، إلخ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

يسترد تفضيل "السمة" مع الرجوع إلى الوضع الافتراضي "داكن".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

يستخدم الاسم المستعار والمعاملات الموضعية.

## Parameter Details

### `-Name <String>`

> اسم التفضيل الذي ترغب في استرداده

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> القيمة الافتراضية إذا لم يتم العثور على التفضيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> مسار قاعدة البيانات لملفات بيانات التفضيلات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة ومسارات قواعد البيانات، إلخ

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

> مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع

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

> لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ

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

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreferencesDatabasePath.md)
