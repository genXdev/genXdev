# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata`

## Synopsis

> छवि निर्देशिकाओं से छवि मेटाडेटा फ़ाइलों को हटाता है।

## Description

Remove-ImageMetaData फ़ंक्शन उन सहयोगी JSON मेटाडेटा फ़ाइलों को हटाता है जो छवियों से जुड़ी होती हैं। यह चुनिंदा रूप से केवल कीवर्ड (description.json), लोगों का डेटा (people.json), वस्तुओं का डेटा (objects.json), या दृश्यों का डेटा (scenes.json) हटा सकता है, या यदि कोई विशिष्ट स्विच प्रदान नहीं किया गया है तो सभी मेटाडेटा फ़ाइलें हटा सकता है। Language पैरामीटर निर्दिष्ट करके भाषा-विशिष्ट मेटाडेटा फ़ाइलों को हटाया जा सकता है, और AllLanguages स्विच का उपयोग करके सभी भाषा वेरिएंट को हटाया जा सकता है।

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@(".\")` | छवि मेटाडेटा हटाने के लिए प्रक्रिया करने वाली निर्देशिका पथों की सरणी। यदि निर्दिष्ट नहीं किया गया है, तो डिफ़ॉल्ट सिस्टम निर्देशिकाओं का उपयोग करता है। |
| `-Language` | String | — | — | 1 | — | भाषा-विशिष्ट मेटाडेटा फ़ाइलों को हटाने के लिए भाषा। |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-Recurse` | SwitchParameter | — | — | Named | — | निर्देशिकाओं में पुनरावर्ती रूप से जाएं। |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | केवल description.json फ़ाइलें (कीवर्ड/विवरण) हटाएँ। |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | केवल people.json फ़ाइलें हटाएँ (चेहरा पहचान डेटा)। |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | केवल objects.json फ़ाइलों (ऑब्जेक्ट डिटेक्शन डेटा) को हटाएं। |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | केवल scenes.json फ़ाइलें (दृश्य वर्गीकरण डेटा) हटाएं। |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | सभी समर्थित भाषाओं के लिए मेटाडेटा फ़ाइलें हटाएं। |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | भाषा, छवि संग्रह आदि जैसे AI वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | भाषा, छवि संग्रह आदि जैसी AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं जैसे भाषा, इमेज कलेक्शन आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

एकाधिक निर्देशिकाओं और सभी उपनिर्देशिकाओं में छवियों के लिए सभी मेटाडेटा फ़ाइलों को हटाता है।

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

डिफ़ॉल्ट सिस्टम निर्देशिकाओं और उपनिर्देशिकाओं से केवल description.json फ़ाइलों को हटाता है।

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

MyPhotos निर्देशिका से केवल people.json फ़ाइलों को हटाता है।

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

डिफ़ॉल्ट निर्देशिकाओं से अंग्रेजी और स्पेनिश दोनों विवरण फ़ाइलों को पुनरावर्ती रूप से हटाता है।

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

सभी समर्थित भाषाओं के लिए कीवर्ड फ़ाइलों को हटाने के लिए उपनाम का उपयोग करता है।

## Parameter Details

### `-ImageDirectories <String[]>`

> छवि मेटाडेटा हटाने के लिए प्रक्रिया करने वाली निर्देशिका पथों की सरणी। यदि निर्दिष्ट नहीं किया गया है, तो डिफ़ॉल्ट सिस्टम निर्देशिकाओं का उपयोग करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@(".\")` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> भाषा-विशिष्ट मेटाडेटा फ़ाइलों को हटाने के लिए भाषा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> निर्देशिकाओं में पुनरावर्ती रूप से जाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyKeywords`

> केवल description.json फ़ाइलें (कीवर्ड/विवरण) हटाएँ।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPeople`

> केवल people.json फ़ाइलें हटाएँ (चेहरा पहचान डेटा)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyObjects`

> केवल objects.json फ़ाइलों (ऑब्जेक्ट डिटेक्शन डेटा) को हटाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyScenes`

> केवल scenes.json फ़ाइलें (दृश्य वर्गीकरण डेटा) हटाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllLanguages`

> सभी समर्थित भाषाओं के लिए मेटाडेटा फ़ाइलें हटाएं।

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
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-AllImageMetaData.md)
