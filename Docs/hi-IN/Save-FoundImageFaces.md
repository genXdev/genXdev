# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces`

## Synopsis

> अनुक्रमित छवि खोज परिणामों से क्रॉप किए गए चेहरे की छवियों को सहेजता है।

## Description

यह फ़ंक्शन छवि खोज परिणाम लेता है और अलग-अलग चेहरे के क्षेत्रों को अलग-अलग छवि फ़ाइलों के रूप में निकालता/सहेजता है। यह विभिन्न मानदंडों का उपयोग करके चेहरे खोज सकता है और उन्हें एक निर्दिष्ट आउटपुट निर्देशिका में सहेज सकता है। फ़ंक्शन विवरण, कीवर्ड, लोग, वस्तुएं, दृश्य, चित्र प्रकार, शैली प्रकार और समग्र मनोदशा द्वारा खोज का समर्थन करता है। यह नग्नता और स्पष्ट सामग्री द्वारा फ़िल्टर भी कर सकता है।

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | सभी संभावित मेटाडेटा प्रकारों में से किसी से भी मेल खाएगा। |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | खोजने के लिए विवरण पाठ, वाइल्डकार्ड की अनुमति है। |
| `-Keywords` | String[] | — | — | Named | `@()` | खोजने के लिए कीवर्ड, वाइल्डकार्ड की अनुमति है। |
| `-People` | String[] | — | — | Named | `@()` | खोजने के लिए लोग, वाइल्डकार्ड की अनुमति है। |
| `-Objects` | String[] | — | — | Named | `@()` | खोजने के लिए ऑब्जेक्ट, वाइल्डकार्ड की अनुमति है। |
| `-Scenes` | String[] | — | — | Named | `@()` | देखने के लिए दृश्य, वाइल्डकार्ड अनुमत। |
| `-PictureType` | String[] | — | — | Named | `@()` | फ़िल्टर करने के लिए चित्र प्रकार, वाइल्डकार्ड की अनुमति है। |
| `-StyleType` | String[] | — | — | Named | `@()` | फ़िल्टर करने के लिए शैली प्रकार, वाइल्डकार्ड की अनुमति है। |
| `-OverallMood` | String[] | — | — | Named | `@()` | फ़िल्टर करने के लिए समग्र मूड, वाइल्डकार्ड की अनुमति है। |
| `-DatabaseFilePath` | String | — | — | Named | — | SQLite डेटाबेस फ़ाइल का पथ। |
| `-Language` | String | — | — | Named | — | विवरणों और कीवर्ड के लिए भाषा। |
| `-PathLike` | String[] | — | — | Named | `@()` | पथ द्वारा छवियों को फ़िल्टर करने के लिए निर्देशिका पथ-जैसे खोज स्ट्रिंग्स की सरणी (SQL LIKE पैटर्न, उदा. '%\2024\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | पिछले -PassThru कॉल से खोज परिणाम स्वीकार करता है ताकि दृश्य को पुनः उत्पन्न किया जा सके। |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | क्रॉप किए गए चेहरे की छवियों को सहेजने के लिए निर्देशिका। |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-HasNudity` | SwitchParameter | — | — | Named | — | अश्लीलता वाली छवियों को फ़िल्टर करें। |
| `-NoNudity` | SwitchParameter | — | — | Named | — | उन चित्रों को फ़िल्टर करें जिनमें नग्नता नहीं है। |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | ऐसी छवियाँ फ़िल्टर करें जिनमें स्पष्ट सामग्री हो। |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | उन छवियों को फ़िल्टर करें जिनमें स्पष्ट सामग्री नहीं है। |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | छवि अनुक्रमणिका डेटाबेस का पुनर्निर्माण बलपूर्वक करें। |
| `-GeoLocation` | Double[] | — | — | Named | — | खोजने के लिए भौगोलिक निर्देशांक [अक्षांश, देशांतर]। |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | छवियों की खोज के लिए जियोलोकेशन से अधिकतम दूरी मीटर में। |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | अज्ञात व्यक्तियों को भी वस्तुओं के रूप में संग्रहीत करें। |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | भाषा, छवि संग्रह आदि जैसे AI वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | भाषा, छवि संग्रह आदि जैसी AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं जैसे भाषा, इमेज कलेक्शन आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Parameter Details

### `-Any <String[]>`

> सभी संभावित मेटाडेटा प्रकारों में से किसी से भी मेल खाएगा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> खोजने के लिए विवरण पाठ, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> खोजने के लिए कीवर्ड, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> खोजने के लिए लोग, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> खोजने के लिए ऑब्जेक्ट, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> देखने के लिए दृश्य, वाइल्डकार्ड अनुमत।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> फ़िल्टर करने के लिए चित्र प्रकार, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> फ़िल्टर करने के लिए शैली प्रकार, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> फ़िल्टर करने के लिए समग्र मूड, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabaseFilePath <String>`

> SQLite डेटाबेस फ़ाइल का पथ।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> विवरणों और कीवर्ड के लिए भाषा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PathLike <String[]>`

> पथ द्वारा छवियों को फ़िल्टर करने के लिए निर्देशिका पथ-जैसे खोज स्ट्रिंग्स की सरणी (SQL LIKE पैटर्न, उदा. '%\2024\%')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object[]>`

> पिछले -PassThru कॉल से खोज परिणाम स्वीकार करता है ताकि दृश्य को पुनः उत्पन्न किया जा सके।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputDirectory <String>`

> क्रॉप किए गए चेहरे की छवियों को सहेजने के लिए निर्देशिका।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasNudity`

> अश्लीलता वाली छवियों को फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> उन चित्रों को फ़िल्टर करें जिनमें नग्नता नहीं है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> ऐसी छवियाँ फ़िल्टर करें जिनमें स्पष्ट सामग्री हो।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> उन छवियों को फ़िल्टर करें जिनमें स्पष्ट सामग्री नहीं है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceIndexRebuild`

> छवि अनुक्रमणिका डेटाबेस का पुनर्निर्माण बलपूर्वक करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> खोजने के लिए भौगोलिक निर्देशांक [अक्षांश, देशांतर]।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> छवियों की खोज के लिए जियोलोकेशन से अधिकतम दूरी मीटर में।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveUnknownPersons`

> अज्ञात व्यक्तियों को भी वस्तुओं के रूप में संग्रहीत करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> भाषा, छवि संग्रह आदि जैसे AI वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> भाषा, छवि संग्रह आदि जैसी AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> एआई प्राथमिकताओं जैसे भाषा, इमेज कलेक्शन आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-ImageMetaData.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-AllImageMetaData.md)
