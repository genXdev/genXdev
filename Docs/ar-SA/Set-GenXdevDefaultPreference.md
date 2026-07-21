# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> يعيّن قيمة تفضيل افتراضية في متجر تفضيلات GenXdev.

## Description

• يدير التفضيلات الافتراضية في نظام تفضيلات GenXdev.
• يتعامل مع تخزين القيم، وإزالة التفضيلات عندما تكون القيم فارغة، ويضمن مزامنة التغييرات عبر النظام.
• يدعم القيم الفارغة عن طريق إزالة التفضيل بالكامل في مثل هذه الحالات.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | اسم التفضيل المراد تعيينه في الإعدادات الافتراضية |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | القيمة المراد تخزينها للتفضيل |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة ومسارات قواعد البيانات، إلخ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

يضبط تفضيل السمة الافتراضي إلى "داكن".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

يستخدم الاسم المستعار لتعطيل إشعارات البريد الإلكتروني في الإعدادات الافتراضية.

## Parameter Details

### `-Name <String>`

> اسم التفضيل المراد تعيينه في الإعدادات الافتراضية

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> القيمة المراد تخزينها للتفضيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> مسار قاعدة البيانات لملفات بيانات التفضيلات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreferencesDatabasePath.md)
