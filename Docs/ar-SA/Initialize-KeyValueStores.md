# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يقوم بتهيئة بنية دليل KeyValueStore للتخزين المحلي والتخزين في OneDrive.

## Description

ينشئ بنية الدليل لمخازن القيم الأساسية المستندة إلى JSON في موقعين: الجهاز المحلي للوصول الفوري ومجلد OneDrive للمزامنة السحابية. يضمن الأمر cmdlet وجود كلا الدليلين وتكوينهما بشكل صحيح.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | مسار قاعدة البيانات لملفات بيانات تخزين المفتاح والقيمة |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

ينشئ الدلائل المحلية القياسية ودلائل OneDrive لمخازن المفاتيح والقيم.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

ينشئ أدلة تخزين المفتاح والقيمة تحت المسار المخصص المحدد.

## Parameter Details

### `-DatabasePath <String>`

> مسار قاعدة البيانات لملفات بيانات تخزين المفتاح والقيمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Sync-KeyValueStore.md)
