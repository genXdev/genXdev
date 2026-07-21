# GenerateMasonryLayoutHtml

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> छवि डेटा से एक उत्तरदायी मेसनरी लेआउट HTML गैलरी उत्पन्न करता है।

## Description

एक संवादात्मक HTML गैलरी बनाता है जिसमें छवियों को प्रदर्शित करने के लिए उत्तरदायी मेसनरी ग्रिड लेआउट है। विशेषताएं शामिल हैं:
- उत्तरदायी ग्रिड लेआउट जो स्क्रीन आकार के अनुकूल हो जाता है
- विवरण और कीवर्ड दिखाने वाले इमेज टूलटिप्स
- इमेज पथ कॉपी करने के लिए क्लिक-टू-कॉपी कार्यक्षमता
- होवर प्रभावों के साथ साफ आधुनिक स्टाइलिंग

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | पथ, कीवर्ड और विवरण सहित चित्र वस्तुओं की सरणी |
| `-FilePath` | String | — | — | 1 | `$null` | जनरेट किए गए HTML फ़ाइल के लिए आउटपुट पथ |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | गैलरी के लिए शीर्षक |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | गैलरी का विवरण |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | क्या संपादन सक्षम है |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | क्या विलोपन सक्षम है |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | बेहतर पोर्टेबिलिटी के लिए फ़ाइल:// URL के बजाय बेस64 डेटा URL के रूप में इमेज एम्बेड करें |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | केवल गोल कोनों वाले आयत में चित्र दिखाएँ, नीचे कोई पाठ नहीं। |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | पृष्ठ को प्रति सेकंड इतने पिक्सेल से ऑटो-स्क्रॉल करें (अक्षम करने के लिए शून्य) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | दृश्य सीमा में आयतों (वस्तुओं/फलकों) को एनिमेट करें, हर 300 मिलीसेकंड पर चक्र करते हुए |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | एकल स्तंभ लेआउट (केंद्रित, 1/3 स्क्रीन चौड़ाई) लागू करें |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | प्रत्येक छवि पथ से पहले जोड़ने के लिए उपसर्ग (जैसे दूरस्थ URL के लिए) |
| `-PageSize` | Int32 | — | — | Named | `20` | डायनामिक लोडिंग के लिए प्रति पेज लोड किए जाने वाले चित्रों की संख्या |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | प्रिंट मोड के लिए लोड करने के लिए छवियों की अधिकतम संख्या |
| `-RootMargin` | String | — | — | Named | `'1200px'` | इनफिनिट स्क्रॉल ट्रिगर के लिए IntersectionObserver rootMargin (जैसे "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | अनंत स्क्रॉल ट्रिगर के लिए IntersectionObserver थ्रेशोल्ड |

## Examples

### Create gallery from image array and save to file $images = @(     @{         path = "C:\photos\sunset.jpg"         keywords = @("nature", "sunset", "landscape")         description = @{             short_description = "Mountain sunset"             long_description = "Beautiful sunset over mountain range"         }     } ) GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

```powershell
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"
```

### Generate HTML string without saving $html = GenerateMasonryLayoutHtml $images

```powershell
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
```

## Parameter Details

### `-Images <Object>`

> पथ, कीवर्ड और विवरण सहित चित्र वस्तुओं की सरणी

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilePath <String>`

> जनरेट किए गए HTML फ़ाइल के लिए आउटपुट पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> गैलरी के लिए शीर्षक

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> गैलरी का विवरण

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Hover over images to see face recognition, object detection, and scene classification data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanEdit`

> क्या संपादन सक्षम है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanDelete`

> क्या विलोपन सक्षम है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> बेहतर पोर्टेबिलिटी के लिए फ़ाइल:// URL के बजाय बेस64 डेटा URL के रूप में इमेज एम्बेड करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> केवल गोल कोनों वाले आयत में चित्र दिखाएँ, नीचे कोई पाठ नहीं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> पृष्ठ को प्रति सेकंड इतने पिक्सेल से ऑटो-स्क्रॉल करें (अक्षम करने के लिए शून्य)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> दृश्य सीमा में आयतों (वस्तुओं/फलकों) को एनिमेट करें, हर 300 मिलीसेकंड पर चक्र करते हुए

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> एकल स्तंभ लेआउट (केंद्रित, 1/3 स्क्रीन चौड़ाई) लागू करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> प्रत्येक छवि पथ से पहले जोड़ने के लिए उपसर्ग (जैसे दूरस्थ URL के लिए)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PageSize <Int32>`

> डायनामिक लोडिंग के लिए प्रति पेज लोड किए जाने वाले चित्रों की संख्या

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxPrintImages <Int32>`

> प्रिंट मोड के लिए लोड करने के लिए छवियों की अधिकतम संख्या

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `50` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RootMargin <String>`

> इनफिनिट स्क्रॉल ट्रिगर के लिए IntersectionObserver rootMargin (जैसे "1200px")

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1200px'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Threshold <Double>`

> अनंत स्क्रॉल ट्रिगर के लिए IntersectionObserver थ्रेशोल्ड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

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
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/WriteFileOutput.md)
