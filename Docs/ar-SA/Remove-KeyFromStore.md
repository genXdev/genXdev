# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> يزيل مفتاحًا من مخزن القيمة-المفتاح.

## Description

تقوم هذه الوظيفة بإزالة مفتاح محدد من مخزن قيم-مفاتيح مُسمى. بالنسبة للمخازن المحلية، يتم حذف المفتاح بشكل دائم. أما بالنسبة للمخازن المتزامنة، يتم وضع علامة على المفتاح كمحذوف للسماح بالمزامنة.

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | اسم المتجر |
| `-KeyName` | String | ✅ | — | 1 | — | المفتاح المراد حذفه |
| `-SynchronizationKey` | String | — | — | 2 | — | مفتاح لتحديد نطاق المزامنة |
| `-DatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات تخزين المفتاح والقيمة |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

احذف المفتاح "MyKey" من المخزن "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

إزالة مفتاح باستخدام الاسم المستعار.

## Parameter Details

### `-StoreName <String>`

> اسم المتجر

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> المفتاح المراد حذفه

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> مفتاح لتحديد نطاق المزامنة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-KeyValueStores.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Sync-KeyValueStore.md)
