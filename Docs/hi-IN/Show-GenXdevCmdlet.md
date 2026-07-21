# Show-GenXdevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `cmds`

## Synopsis

> GenXdev PowerShell मॉड्यूल को उनके cmdlets और उपनामों के साथ प्रदर्शित करता है।

## Description

सभी इंस्टॉल किए गए GenXdev PowerShell मॉड्यूल और उनसे संबंधित cmdlets और उपनामों को सूचीबद्ध करता है। Cmdlet जानकारी और वैकल्पिक रूप से उनकी स्क्रिप्ट स्थितियों को प्राप्त करने के लिए Get-GenXDevCmdlet का उपयोग करता है। फ़िल्टरिंग और विभिन्न प्रदर्शन विकल्प प्रदान करता है।

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | cmdlet को फ़िल्टर करने के लिए खोज पैटर्न 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | कमांडलेट परिभाषाओं से मेल खाने के लिए रेगुलर एक्सप्रेशन |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | खोजने के लिए GenXdev मॉड्यूल नाम 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | स्थानीय मॉड्यूल पथों में खोज छोड़ें |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | केवल प्रकाशित मॉड्यूल पथों में खोजें |
| `-FromScripts` | SwitchParameter | — | — | Named | — | मॉड्यूल के बजाय स्क्रिप्ट फ़ाइलों में खोजें |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | नियमित मॉड्यूल के अतिरिक्त स्क्रिप्ट्स निर्देशिका को भी शामिल करता है *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | केवल अद्वितीय मॉड्यूल नाम लौटाएं |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | वाइल्डकार्ड मिलान के बजाय सटीक मिलान करें |
| `-Online` | SwitchParameter | — | — | Named | — | कंसोल आउटपुट के बजाय GitHub दस्तावेज़ खोलें |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | जब निर्दिष्ट किया जाता है, तो केवल cmdlets के उपनाम प्रदर्शित करता है |
| `-ShowTable` | SwitchParameter | — | — | Named | — | परिणामों को तालिका प्रारूप में प्रदर्शित करें |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Parameter Details

### `-CmdletName <String>`

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
### `-Online`

> कंसोल आउटपुट के बजाय GitHub दस्तावेज़ खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAliases`

> जब निर्दिष्ट किया जाता है, तो केवल cmdlets के उपनाम प्रदर्शित करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `aliases`, `nonboring`, `notlame`, `handyonces` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowTable`

> परिणामों को तालिका प्रारूप में प्रदर्शित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `table`, `grid` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> The `-PassThru` parameter.

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

- `Collections.ArrayList`
- `Void`

## Related Links

- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevCmdlet.md)
