# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> स्थानीय और OneDrive की-वैल्यू स्टोर JSON फ़ाइलों को सिंक्रोनाइज़ करता है।

## Description

स्थानीय और OneDrive शैडो JSON फ़ाइलों के बीच अंतिम-संशोधित टाइमस्टैम्प रणनीति का उपयोग करके दो-तरफ़ा सिंक्रनाइज़ेशन करता है। रिकॉर्ड उनके अंतिम संशोधन समय के आधार पर मर्ज किए जाते हैं, जिसमें नए संस्करण प्राथमिकता लेते हैं।

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | समक्रमण दायरा की पहचान करने की कुंजी |
| `-DatabasePath` | String | — | — | Named | — | की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Parameter Details

### `-SynchronizationKey <String>`

> समक्रमण दायरा की पहचान करने की कुंजी

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-ValueByKeyInStore.md)
