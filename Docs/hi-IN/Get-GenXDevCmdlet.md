# Get-GenXDevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `gcmds`

## Synopsis

> सभी GenXdev cmdlets और उनके विवरणों को पुनर्प्राप्त और सूचीबद्ध करता है।

## Description

इंस्टॉल किए गए GenXdev मॉड्यूल और स्क्रिप्ट फ़ाइलों में cmdlets, उनके उपनाम और विवरण खोजता है। नाम पैटर्न और मॉड्यूल नाम द्वारा फ़िल्टर कर सकता है। cmdlet परिभाषाओं द्वारा फ़िल्टरिंग का समर्थन करता है और स्थानीय और प्रकाशित मॉड्यूल पथ दोनों में लचीले खोज विकल्प प्रदान करता है।

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | cmdlet को फ़िल्टर करने के लिए खोज पैटर्न 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | कमांडलेट परिभाषाओं से मेल खाने के लिए रेगुलर एक्सप्रेशन |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | खोजने के लिए GenXdev मॉड्यूल नाम 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | स्थानीय मॉड्यूल पथों में खोज छोड़ें |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | केवल प्रकाशित मॉड्यूल पथों में खोजें |
| `-FromScripts` | SwitchParameter | — | — | Named | — | मॉड्यूल के बजाय स्क्रिप्ट फ़ाइलों में खोजें |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | नियमित मॉड्यूल के अतिरिक्त स्क्रिप्ट्स निर्देशिका को भी शामिल करता है *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | केवल अद्वितीय मॉड्यूल नाम लौटाएं |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | वाइल्डकार्ड मिलान के बजाय सटीक मिलान करें |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Parameter Details

### `-CmdletName <String[]>`

> cmdlet को फ़िल्टर करने के लिए खोज पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DefinitionMatches <String>`

> कमांडलेट परिभाषाओं से मेल खाने के लिए रेगुलर एक्सप्रेशन

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> खोजने के लिए GenXdev मॉड्यूल नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> स्थानीय मॉड्यूल पथों में खोज छोड़ें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> केवल प्रकाशित मॉड्यूल पथों में खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> मॉड्यूल के बजाय स्क्रिप्ट फ़ाइलों में खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> नियमित मॉड्यूल के अतिरिक्त स्क्रिप्ट्स निर्देशिका को भी शामिल करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> केवल अद्वितीय मॉड्यूल नाम लौटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> वाइल्डकार्ड मिलान के बजाय सटीक मिलान करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-GenXdevCmdlet.md)
