# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يحصل على مسار قاعدة البيانات المهيأة لملفات بيانات التفضيلات المستخدمة في عمليات GenXdev.Data.

## Description

* يسترد مسار قاعدة البيانات العام المستخدم من قبل وحدة GenXdev.Data لتخزين التفضيلات المتنوعة وعمليات البيانات.
* يتحقق من المتغيرات العامة أولاً (إلا إذا تم تحديد SkipSession)، ثم يعود إلى التفضيلات الدائمة، وأخيراً يستخدم الإعدادات الافتراضية للنظام.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | تجاوز اختياري لمسار قاعدة البيانات |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة ومسارات قواعد البيانات، إلخ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

يسترد مسار قاعدة البيانات من المتغيرات العامة أو التفضيلات.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

يتجاوز متغير الجلسة ويستخدم التفضيلات الدائمة.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

يمسح إعداد الجلسة قبل استرداد المسار.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> تجاوز اختياري لمسار قاعدة البيانات

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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreferencesDatabasePath.md)
