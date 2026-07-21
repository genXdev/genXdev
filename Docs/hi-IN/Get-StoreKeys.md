# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys`

## Synopsis

> किसी दिए गए कुंजी-मूल्य भंडार के लिए सभी कुंजी नाम प्राप्त करता है।

## Description

* किसी निर्दिष्ट स्टोर के लिए सभी सक्रिय (हटाए न गए) कुंजियों को पुनर्प्राप्त करने के लिए KeyValueStore JSON फ़ाइल को क्वेरी करता है।
* वैकल्पिक रूप से सिंक्रोनाइज़ेशन स्कोप द्वारा फ़िल्टर कर सकता है।
* यदि निर्देशिका संरचना नहीं मिलती है तो स्वचालित रूप से इसे आरंभ करता है और गैर-स्थानीय स्टोर के लिए सिंक्रोनाइज़ेशन संभालता है।

## Syntax

```powershell
Get-StoreKeys -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | उस स्टोर का नाम जिसकी कुंजियाँ पुनर्प्राप्त की जानी हैं |
| `-SynchronizationKey` | String | — | — | 1 | — | सिंक्रोनाइज़ेशन स्कोप की पहचान करने की कुंजी, डिफ़ॉल्ट सभी है |
| `-DatabasePath` | String | — | — | Named | — | की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

स्थानीय दायरे के लिए ApplicationSettings स्टोर से सभी कुंजियाँ प्राप्त करता है।

### Example 2

```powershell
getkeys AppSettings
```

एलियास का उपयोग करके कुंजियाँ प्राप्त करता है।

## Parameter Details

### `-StoreName <String>`

> उस स्टोर का नाम जिसकी कुंजियाँ पुनर्प्राप्त की जानी हैं

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

> सिंक्रोनाइज़ेशन स्कोप की पहचान करने की कुंजी, डिफ़ॉल्ट सभी है

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

> की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KeyValueStorePath.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Sync-KeyValueStore.md)
