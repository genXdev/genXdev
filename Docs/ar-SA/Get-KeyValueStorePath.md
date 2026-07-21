# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يحصل على مسار الملف لمخزن قيمة المفتاح.

## Description

* يقوم ببناء مسار الملف لمخزن القيم والمفاتيح بناءً على مفتاح المزامنة واسم المخزن والدليل الأساسي.

## Syntax

```powershell
Get-KeyValueStorePath -SynchronizationKey <String> -StoreName <String> [-BasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | مفتاح المزامنة المستخدم لتحديد المتجر |
| `-StoreName` | String | ✅ | — | 1 | — | اسم مخزن القيمة والمفتاح |
| `-BasePath` | String | — | — | Named | — | المسار الأساسي للدليل لتخزين الملفات |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

احصل على المسار لمخزن المفاتيح-القيم المحلي.

## Parameter Details

### `-SynchronizationKey <String>`

> مفتاح المزامنة المستخدم لتحديد المتجر

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StoreName <String>`

> اسم مخزن القيمة والمفتاح

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BasePath <String>`

> المسار الأساسي للدليل لتخزين الملفات

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
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Sync-KeyValueStore.md)
