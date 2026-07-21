# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يُعيّن مسار قاعدة البيانات للتفضيلات المستخدمة في عمليات GenXdev.Data.

## Description

* يقوم بتكوين مسار قاعدة البيانات العمومي الذي تستخدمه وحدة GenXdev.Data لتخزين التفضيلات المختلفة وعمليات البيانات.
* يتم تخزين الإعدادات في الجلسة الحالية (باستخدام متغيرات عمومية) ويمكن مسحها من الجلسة (باستخدام -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | مسار قاعدة البيانات حيث توجد ملفات بيانات التفضيلات |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات البيانات مثل اللغة، مسارات قاعدة البيانات، إلخ |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | عند التحديد، يقوم بتخزين الإعداد فقط في الجلسة الحالية (متغير عام) دون حفظه في التفضيلات |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | عند التحديد، يقوم بمسح إعداد الجلسة فقط (المتغير العمومي) دون التأثير على التفضيلات الدائمة. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

يضبط مسار قاعدة البيانات في الجلسة الحالية (متغير عام).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

يعيّن مسار قاعدة البيانات باستخدام المعلمة الموضعية.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

يضبط المسار للجلسة الحالية فقط دون حفظ.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

يمسح المتغير العمومي لمسار قاعدة البيانات.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> مسار قاعدة البيانات حيث توجد ملفات بيانات التفضيلات

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
### `-SessionOnly`

> عند التحديد، يقوم بتخزين الإعداد فقط في الجلسة الحالية (متغير عام) دون حفظه في التفضيلات

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

> عند التحديد، يقوم بمسح إعداد الجلسة فقط (المتغير العمومي) دون التأثير على التفضيلات الدائمة.

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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevPreference.md)
