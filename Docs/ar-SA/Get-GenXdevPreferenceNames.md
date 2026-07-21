# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> يحصل على جميع أسماء التفضيلات من تخزين الجلسة و مخازن قاعدة البيانات.

## Description

* يسترجع قائمة فريدة بأسماء التفضيلات من خلال دمج المفاتيح من
  تخزين الجلسة (المتغيرات العالمية) ومخازن التفضيلات المحلية والافتراضية.
* يحترم معلمات إدارة الجلسة للتحكم في المصادر التي يتم الاستعلام عنها.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة ومسارات قواعد البيانات، إلخ |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

تُرجع مصفوفة مرتبة من أسماء التفضيلات الفريدة من تخزين الجلسة وكلا المخزنين باستخدام مسار قاعدة البيانات المحدد.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

يعيد فقط أسماء التفضيلات من تخزين الجلسة.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

إرجاع أسماء التفضيلات فقط من مخازن قاعدة البيانات.

## Parameter Details

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
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreferencesDatabasePath.md)
