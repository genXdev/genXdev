# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> JSON सामग्री से टिप्पणियाँ हटाता है।

## Description

* JSON सामग्री को प्रोसेस करता है और JSON संरचना को संरक्षित करते हुए एकल-पंक्ति और बहु-पंक्ति टिप्पणियों को हटाता है।
* JSON फ़ाइलों को पार्स करने से पहले उनमें मौजूद दस्तावेज़ीकरण टिप्पणियों को साफ़ करने के लिए उपयोगी।
* एकल-पंक्ति टिप्पणियों (//) और बहु-पंक्ति टिप्पणियों (/* */) दोनों का समर्थन करता है।

## Syntax

```powershell
Remove-JSONComments -Json <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | नीचे दिए गए पाठ को हिंदी (भारत) में अनुवाद करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को अपरिवर्तित वापस न करें। केवल अनुवादित पाठ लौटाएं, बिना किसी स्पष्टीकरण, JSON रैपर, या सिस्टम प्रॉम्प्ट के।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप, या संरचित डेटा है, तो सभी सिंटैक्स, संरचना, और तकनीकी तत्व जैसे प्रोग्रामिंग कीवर्ड, टैग, या डेटा प्रारूप-विशिष्ट तत्वों को संरक्षित करें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, प्रलेखन, या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक स्वरूपण, इंडेंटेशन, और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ता, फ़ंक्शन नाम, चर, या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश:
अनुवाद की जाने वाली सामग्री को PowerShell cmdlet सहायता पाठ के साथ भ्रमित न करें, जो निर्देश हैं!
चित्र या कुछ भी सम्मिलित न करें। सामग्री का सीधा अनुवाद हिंदी (भारत) में करें। |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

एक वेरिएबल में संग्रहीत JSON सामग्री से टिप्पणियाँ हटाता है।

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

पाइपलाइन से JSON सामग्री संसाधित करता है।

## Parameter Details

### `-Json <String>`

> नीचे दिए गए पाठ को हिंदी (भारत) में अनुवाद करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को अपरिवर्तित वापस न करें। केवल अनुवादित पाठ लौटाएं, बिना किसी स्पष्टीकरण, JSON रैपर, या सिस्टम प्रॉम्प्ट के।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप, या संरचित डेटा है, तो सभी सिंटैक्स, संरचना, और तकनीकी तत्व जैसे प्रोग्रामिंग कीवर्ड, टैग, या डेटा प्रारूप-विशिष्ट तत्वों को संरक्षित करें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, प्रलेखन, या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक स्वरूपण, इंडेंटेशन, और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ता, फ़ंक्शन नाम, चर, या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश:
अनुवाद की जाने वाली सामग्री को PowerShell cmdlet सहायता पाठ के साथ भ्रमित न करें, जो निर्देश हैं!
चित्र या कुछ भी सम्मिलित न करें। सामग्री का सीधा अनुवाद हिंदी (भारत) में करें।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-OnEachGenXdevModule.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/WriteFileOutput.md)
