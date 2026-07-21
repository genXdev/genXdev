# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys`

## Synopsis

> استرداد جميع أسماء المفاتيح لمخزن قيمة المفتاح المحدد.

## Description

• يستعلم ملف JSON لمخزن المفاتيح لاسترداد جميع المفاتيح النشطة (غير المحذوفة) لمخزن محدد.
• يمكن تصفية اختيارياً حسب نطاق المزامنة.
• يقوم تلقائياً بتهيئة هيكل الدليل إذا لم يتم العثور عليه ويعالج المزامنة للمخازن غير المحلية.

## Syntax

```powershell
Get-StoreKeys -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | اسم المتجر الذي يجب استرداد مفاتيحه |
| `-SynchronizationKey` | String | — | — | 1 | — | مفتاح لتحديد نطاق المزامنة، الافتراضي هو الكل |
| `-DatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات تخزين المفتاح والقيمة |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

يسترد جميع المفاتيح من مخزن إعدادات التطبيق للنطاق المحلي.

### Example 2

```powershell
getkeys AppSettings
```

استرداد المفاتيح باستخدام الاسم المستعار.

## Parameter Details

### `-StoreName <String>`

> اسم المتجر الذي يجب استرداد مفاتيحه

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> مفتاح لتحديد نطاق المزامنة، الافتراضي هو الكل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> مسار قاعدة البيانات لملفات بيانات تخزين المفتاح والقيمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KeyValueStorePath.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Sync-KeyValueStore.md)
