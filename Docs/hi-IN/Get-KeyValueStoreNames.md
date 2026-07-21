# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> उपलब्ध कुंजी-मान भंडारों के नाम प्राप्त करता है।

## Description

* कुंजी-मूल्य स्टोर निर्देशिका में JSON फ़ाइलों को स्कैन करता है और निर्दिष्ट सिंक्रनाइज़ेशन कुंजी पैटर्न के आधार पर अद्वितीय स्टोर नाम निकालता है।
* सुनिश्चित करता है कि स्टोर निर्देशिका मौजूद है और यदि आवश्यक हो तो गैर-स्थानीय स्टोर को सिंक्रनाइज़ करता है।

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | सिंक्रोनाइज़ेशन स्कोप की पहचान करने की कुंजी, डिफ़ॉल्ट सभी है |
| `-DatabasePath` | String | — | — | Named | — | की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

डिफ़ॉल्ट स्थान से सभी स्टोर नाम पुनर्प्राप्त करता है।

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

'स्थानीय' सिंक्रोनाइज़ेशन स्कोप के लिए स्टोर नाम प्राप्त करता है।

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

उपनाम का उपयोग करके कस्टम डेटाबेस पथ से सभी स्टोर नाम प्राप्त करता है।

## Parameter Details

### `-SynchronizationKey <String>`

> सिंक्रोनाइज़ेशन स्कोप की पहचान करने की कुंजी, डिफ़ॉल्ट सभी है

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Sync-KeyValueStore.md)
