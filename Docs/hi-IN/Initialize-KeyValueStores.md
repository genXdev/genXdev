# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> स्थानीय और OneDrive स्टोरेज के लिए KeyValueStore निर्देशिका संरचना प्रारंभ करता है।

## Description

JSON-आधारित कुंजी-मूल्य भंडारों के लिए दो स्थानों पर निर्देशिका संरचना बनाता है: स्थानीय मशीन पर तत्काल पहुँच के लिए और OneDrive फ़ोल्डर में क्लाउड सिंक्रनाइज़ेशन के लिए। cmdlet सुनिश्चित करता है कि दोनों निर्देशिकाएँ मौजूद हैं और ठीक से कॉन्फ़िगर की गई हैं।

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

की-वैल्यू स्टोर के लिए मानक स्थानीय और OneDrive निर्देशिकाएँ बनाता है।

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

निर्दिष्ट कस्टम पथ के अंतर्गत कुंजी-मूल्य भंडार निर्देशिकाएं बनाता है।

## Parameter Details

### `-DatabasePath <String>`

> की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Sync-KeyValueStore.md)
