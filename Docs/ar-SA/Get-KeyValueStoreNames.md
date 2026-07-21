# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> يسترجع أسماء مخازن المفاتيح والقيم المتاحة.

## Description

* يفحص دليل مخزن المفاتيح والقيم بحثًا عن ملفات JSON ويستخرج أسماء المتاجر الفريدة بناءً على نمط مفتاح المزامنة المحدد.
* يضمن وجود دليل المتجر ويقوم بمزامنة المتاجر غير المحلية إذا لزم الأمر.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | مفتاح لتحديد نطاق المزامنة، الافتراضي هو الكل |
| `-DatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات تخزين المفتاح والقيمة |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

استرداد جميع أسماء المتاجر من الموقع الافتراضي.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

استرداد أسماء المتاجر لنطاق المزامنة 'المحلي'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

استرداد جميع أسماء المتاجر من مسار قاعدة بيانات مخصص باستخدام الاسم المستعار.

## Parameter Details

### `-SynchronizationKey <String>`

> مفتاح لتحديد نطاق المزامنة، الافتراضي هو الكل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Sync-KeyValueStore.md)
