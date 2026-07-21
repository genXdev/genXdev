# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> JSON फ़ाइल-आधारित स्टोर में कुंजी-मूल्य जोड़े प्रबंधित करता है।

## Description

JSON फ़ाइलों का उपयोग करके कुंजी-मान जोड़ों के लिए स्थायी भंडारण प्रदान करता है। नई प्रविष्टियों के सम्मिलन और मौजूदा प्रविष्टियों के अद्यतन दोनों को संभालता है। गैर-स्थानीय भंडारण के लिए वैकल्पिक सिंक्रनाइज़ेशन का समर्थन करता है। यह फ़ंक्शन एक अपसर्ट ऑपरेशन लागू करता है जो सिंक्रनाइज़ेशन कुंजी, स्टोर नाम और कुंजी नाम के संयोजन के आधार पर या तो नए कुंजी-मान जोड़े सम्मिलित करता है या मौजूदा को अद्यतन करता है।

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | कुंजी-मूल्य जोड़ी के लिए स्टोर नाम |
| `-KeyName` | String | ✅ | — | 1 | — | सेट या अपडेट करने के लिए कुंजी का नाम |
| `-Value` | String | — | — | 2 | — | संग्रहित किया जाने वाला मान |
| `-SynchronizationKey` | String | — | — | 3 | — | समक्रमण दायरा की पहचान करने की कुंजी |
| `-DatabasePath` | String | — | — | Named | — | की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

ConfigStore में एक API एंडपॉइंट सेट करें।

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

मान सेट करने के लिए उपनाम का उपयोग करें।

## Parameter Details

### `-StoreName <String>`

> कुंजी-मूल्य जोड़ी के लिए स्टोर नाम

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

> सेट या अपडेट करने के लिए कुंजी का नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> संग्रहित किया जाने वाला मान

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> समक्रमण दायरा की पहचान करने की कुंजी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
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
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Sync-KeyValueStore.md)
