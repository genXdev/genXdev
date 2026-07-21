# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> कोड स्ट्रिंग से लगातार दो खाली पंक्तियों को हटाता है, वैकल्पिक रूप से आउटपुट को पुन: स्वरूपित करता है।

## Description

स्रोत कोड या टेक्स्ट को साफ करके लगातार खाली पंक्तियों को एक खाली पंक्ति में बदलता है। इससे पठनीयता में सुधार होता है और सामान्य कोड प्रारूपण परंपराओं का पालन होता है। जब -Reformat स्विच निर्दिष्ट किया जाता है, तो कोड संरचना को सामान्य करने के लिए अतिरिक्त प्रारूपण नियम लागू किए जाते हैं।

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | प्रसंस्करण के लिए स्रोत कोड या टेक्स्ट स्ट्रिंग जिसमें दोहरी खाली पंक्तियाँ हटाई जानी हैं |
| `-Reformat` | SwitchParameter | — | — | Named | — | अतिरिक्त स्वरूपण नियम लागू करें जो दोहरी खाली पंक्ति हटाने से परे हों |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

फ़ंक्शन के माध्यम से स्रोत कोड को पाइप करके लगातार खाली पंक्तियों को हटाता है।

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

दोहरी खाली पंक्तियों को हटाता है और अतिरिक्त स्वरूपण लागू करता है।

## Parameter Details

### `-code <String>`

> प्रसंस्करण के लिए स्रोत कोड या टेक्स्ट स्ट्रिंग जिसमें दोहरी खाली पंक्तियाँ हटाई जानी हैं

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> अतिरिक्त स्वरूपण नियम लागू करें जो दोहरी खाली पंक्ति हटाने से परे हों

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

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-ArrayTemplate.md)
