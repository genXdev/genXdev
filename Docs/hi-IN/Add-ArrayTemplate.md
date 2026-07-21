# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> गुण प्लेसहोल्डर वाले एक टेम्पलेट स्ट्रिंग का उपयोग करके ऑब्जेक्ट्स के संग्रह को स्वरूपित करता है, जिससे एक एकल स्वरूपित स्ट्रिंग उत्पन्न होती है।

## Description

वस्तुओं के संग्रह पर पुनरावृत्ति करता है और प्रत्येक आइटम पर {PropertyName} या {PropertyName:format} प्लेसहोल्डर वाला एक टेम्पलेट स्ट्रिंग लागू करता है। स्वरूपित परिणाम एक कॉन्फ़िगरेबल विभाजक के साथ जोड़े जाते हैं। लचीली आउटपुट स्वरूपण के लिए इंडेंटेशन, अनुगामी न्यूलाइन्स और अनुगामी विभाजकों का समर्थन करता है।

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | फ़ॉर्मेट करने के लिए ऑब्जेक्ट का संग्रह |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} या {PropertyName:format} प्लेसहोल्डर्स वाला टेम्पलेट स्ट्रिंग |
| `-Delimiter` | String | — | — | 2 | `"`n"` | स्वरूपित आइटमों के बीच डालने के लिए सीमांकक स्ट्रिंग |
| `-Indentation` | Int32 | — | — | 3 | `0` | इंडेंटेशन स्तरों की संख्या (प्रति स्तर 4 स्थान) |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | अंतिम आइटम के बाद एक अनुगामी सीमांकक जोड़ता है |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | जब सरणी खाली न हो तो अंत में विभाजक जोड़ें |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

नाम: एलिस
आयु: 30

नाम: बॉब
आयु: 25

संपत्ति प्लेसहोल्डर्स के साथ हैशटेबल्स की एक सरणी को स्वरूपित करता है।

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

स्वरूप ऐरे उपनाम का उपयोग इंडेंटेशन और कस्टम सीमांकक के साथ करता है।

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> फ़ॉर्मेट करने के लिए ऑब्जेक्ट का संग्रह

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> {PropertyName} या {PropertyName:format} प्लेसहोल्डर्स वाला टेम्पलेट स्ट्रिंग

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> स्वरूपित आइटमों के बीच डालने के लिए सीमांकक स्ट्रिंग

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> इंडेंटेशन स्तरों की संख्या (प्रति स्तर 4 स्थान)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> अंतिम आइटम के बाद एक अनुगामी सीमांकक जोड़ता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> जब सरणी खाली न हो तो अंत में विभाजक जोड़ें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-DoubleEmptyLines.md)
