# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> يزيل قيمة تفضيل من مخزن تفضيلات GenXdev.

## Description

* إزالة قيمة تفضيل من المخزن المحلي، واختياريًا من المخزن الافتراضي.
* يوفر مجموعتين من المعلمات - واحدة للإزالة المحلية فقط وأخرى للإزالة من المخازن المحلية والافتراضية معًا.
* يضمن المزامنة الصحيحة عند تعديل المخزن الافتراضي.

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | اسم التفضيل المراد إزالته |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | التبديل لإزالة التفضيل من الإعدادات الافتراضية أيضًا |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة ومسارات قواعد البيانات، إلخ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

يزيل تفضيل "الموضوع" من المخزن المحلي فقط.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

يزيل تفضيل "المظهر" من كل من المتاجر المحلية والافتراضية.

## Parameter Details

### `-Name <String>`

> اسم التفضيل المراد إزالته

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

> التبديل لإزالة التفضيل من الإعدادات الافتراضية أيضًا

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
### `-SkipSession`

> لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreferencesDatabasePath.md)
