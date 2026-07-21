# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> की-वैल्यू स्टोर से एक कुंजी हटाता है।

## Description

यह फ़ंक्शन नामित कुंजी-मान संग्रह से एक निर्दिष्ट कुंजी को हटाता है। स्थानीय संग्रह के लिए, कुंजी स्थायी रूप से हटा दी जाती है। सिंक्रनाइज़ संग्रह के लिए, कुंजी को हटाए गए के रूप में चिह्नित किया जाता है ताकि सिंक्रनाइज़ेशन संभव हो सके।

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | स्टोर का नाम |
| `-KeyName` | String | ✅ | — | 1 | — | हटाने के लिए कुंजी |
| `-SynchronizationKey` | String | — | — | 2 | — | समक्रमण दायरा की पहचान करने की कुंजी |
| `-DatabasePath` | String | — | — | Named | — | की-वैल्यू स्टोर डेटा फ़ाइलों के लिए डेटाबेस पथ |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

स्टोर "MyStore" से कुंजी "MyKey" हटाएं।

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

उपनाम का उपयोग करके कुंजी हटाएं।

## Parameter Details

### `-StoreName <String>`

> स्टोर का नाम

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

> हटाने के लिए कुंजी

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

> समक्रमण दायरा की पहचान करने की कुंजी

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
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Sync-KeyValueStore.md)
