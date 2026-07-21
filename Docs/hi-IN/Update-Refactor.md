# Update-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `updaterefactor`

## Synopsis

> रीफैक्टरिंग सेट्स को अपडेट और प्रबंधित करता है जिसमें फ़ाइल चयन और प्रोसेसिंग शामिल है।

## Description

रीफैक्टरिंग सेटों का व्यापक प्रबंधन प्रदान करता है:
- प्रसंस्करण कतारों से फ़ाइलें जोड़ना या हटाना
- सेट से हटाई गई फ़ाइलों को साफ करना
- स्थिति जानकारी और प्रगति ट्रैकिंग का प्रबंधन
- एलएलएम-आधारित फ़ाइल चयन और प्रसंस्करण को संभालना
- स्वचालित और मैनुअल दोनों फ़ाइल प्रबंधन का समर्थन
- सभी कार्यों का विस्तृत लॉग बनाए रखना
- हटाई गई फ़ाइलों को सुचारू रूप से संभालना (CleanUpDeletedFiles का उपयोग न करने पर छोड़ दिया जाता है)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | रीफ़ैक्टर का नाम, वाइल्डकार्ड स्वीकार करता है *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | अपडेट करने के लिए रीफैक्टर सेट *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | जोड़ने के लिए फ़ाइल नाम |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | हटाने के लिए फ़ाइल नाम |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | संशोधित तिथि के अनुसार फ़ाइलें चुनें |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | संशोधित दिनांक के अनुसार फ़ाइलें चुनें |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | निर्माण तिथि के अनुसार फ़ाइलें चुनें |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | निर्माण तिथि के अनुसार फ़ाइलें चुनें |
| `-PromptKey` | String | — | — | Named | — | प्रॉम्प्ट कुंजी इंगित करती है कि किस प्रॉम्प्ट स्क्रिप्ट का उपयोग करना है |
| `-Prompt` | String | — | — | Named | `''` | प्रॉम्प्ट कुंजी इंगित करती है कि किस प्रॉम्प्ट स्क्रिप्ट का उपयोग करना है |
| `-SelectionScript` | String | — | — | Named | — | पुनः संरचना करने के लिए आइटम चुनने के लिए पावरशेल स्क्रिप्ट |
| `-SelectionPrompt` | String | — | — | Named | — | यदि प्रदान किया गया, तो स्क्रिप्ट की सामग्री के आधार पर चयन करने के लिए LLM को लागू किया जाएगा |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-Temperature` | Double | — | — | Named | `-1` | प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI संचालन के लिए सेकंड में टाइमआउट |
| `-Priority` | Int32 | — | — | Named | — | इस रीफैक्टर सेट के लिए प्राथमिकता |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | LLM चयन के दौरान उपकरणों के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी |
| `-KeysToSend` | String[] | — | — | Named | `@()` | फ़ाइल खोलने के बाद कीस्ट्रोक्स के रूप में आमंत्रित करने की कुंजियाँ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | हटाए गए फ़ाइलों को साफ करें |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | उपयोगकर्ता संवाद को दबाने के लिए स्विच करें |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | LLM-आधारित फ़ाइल चयन प्रसंस्करण सक्षम करने के लिए स्विच करें |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | रीफ़ैक्टर सेट में सभी फ़ाइलों को प्रोसेस करने के लिए स्विच करें |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | विफल LLM चयनों को पुनः प्रयास करने के लिए स्विच करें |
| `-Clear` | SwitchParameter | — | — | Named | — | रीफैक्टर सेट से सभी फ़ाइलें साफ़ करें |
| `-ClearLog` | SwitchParameter | — | — | Named | — | रिफैक्टर सेट के लॉग को साफ़ करें |
| `-Reset` | SwitchParameter | — | — | Named | — | रीफैक्टर सेट की शुरुआत से शुरू करें |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | सभी LLMSelections को पुनरारंभ करें |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | सभी फ़ाइलों को रिफैक्टर्ड के रूप में चिह्नित करें |
| `-RedoLast` | SwitchParameter | — | — | Named | — | पिछले रिफैक्टर को फिर से करें |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | पिछले अपडेट के बाद से संशोधित फ़ाइलों को स्वचालित रूप से पुनःप्रक्रिया करें |
| `-Code` | SwitchParameter | — | — | Named | — | फ़ाइल खोलने के लिए IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | विज़ुअल स्टूडियो में खोलें |
| `-Speak` | SwitchParameter | — | — | Named | — | अगले रीफैक्टरिंग के विवरण बताएं |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | उपलब्ध सिस्टम RAM द्वारा कॉन्फ़िगरेशन चुनें |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | उपलब्ध GPU RAM द्वारा कॉन्फ़िगरेशन चुनें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
```

## Parameter Details

### `-Name <String[]>`

> रीफ़ैक्टर का नाम, वाइल्डकार्ड स्वीकार करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | Name |

<hr/>
### `-Refactor <GenXdev.Helpers.RefactorDefinition[]>`

> अपडेट करने के लिए रीफैक्टर सेट

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Refactor |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> जोड़ने के लिए फ़ाइल नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToRemove <IO.FileInfo[]>`

> हटाने के लिए फ़ाइल नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateFrom <DateTime>`

> संशोधित तिथि के अनुसार फ़ाइलें चुनें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateTo <DateTime>`

> संशोधित दिनांक के अनुसार फ़ाइलें चुनें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateFrom <DateTime>`

> निर्माण तिथि के अनुसार फ़ाइलें चुनें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateTo <DateTime>`

> निर्माण तिथि के अनुसार फ़ाइलें चुनें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PromptKey <String>`

> प्रॉम्प्ट कुंजी इंगित करती है कि किस प्रॉम्प्ट स्क्रिप्ट का उपयोग करना है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> प्रॉम्प्ट कुंजी इंगित करती है कि किस प्रॉम्प्ट स्क्रिप्ट का उपयोग करना है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionScript <String>`

> पुनः संरचना करने के लिए आइटम चुनने के लिए पावरशेल स्क्रिप्ट

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionPrompt <String>`

> यदि प्रदान किया गया, तो स्क्रिप्ट की सामग्री के आधार पर चयन करने के लिए LLM को लागू किया जाएगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM क्वेरी का प्रकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI संचालन के लिए API एंडपॉइंट URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> प्रमाणित AI संचालनों के लिए API कुंजी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> AI संचालन के लिए सेकंड में टाइमआउट

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> इस रीफैक्टर सेट के लिए प्राथमिकता

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> LLM चयन के दौरान उपकरणों के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> फ़ाइल खोलने के बाद कीस्ट्रोक्स के रूप में आमंत्रित करने की कुंजियाँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
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
### `-CleanUpDeletedFiles`

> हटाए गए फ़ाइलों को साफ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AskBeforeLLMSelection`

> उपयोगकर्ता संवाद को दबाने के लिए स्विच करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAutoSelections`

> LLM-आधारित फ़ाइल चयन प्रसंस्करण सक्षम करने के लिए स्विच करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAISelections`

> रीफ़ैक्टर सेट में सभी फ़ाइलों को प्रोसेस करने के लिए स्विच करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `PerformAllLLMSelections` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailedLLMSelections`

> विफल LLM चयनों को पुनः प्रयास करने के लिए स्विच करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Clear`

> रीफैक्टर सेट से सभी फ़ाइलें साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearLog`

> रिफैक्टर सेट के लॉग को साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reset`

> रीफैक्टर सेट की शुरुआत से शुरू करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetLMSelections`

> सभी LLMSelections को पुनरारंभ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkAllCompleted`

> सभी फ़ाइलों को रिफैक्टर्ड के रूप में चिह्नित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoLast`

> पिछले रिफैक्टर को फिर से करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReprocessModifiedFiles`

> पिछले अपडेट के बाद से संशोधित फ़ाइलों को स्वचालित रूप से पुनःप्रक्रिया करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `AutoAddModifiedFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> फ़ाइल खोलने के लिए IDE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> विज़ुअल स्टूडियो में खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> अगले रीफैक्टरिंग के विवरण बताएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeRam`

> उपलब्ध सिस्टम RAM द्वारा कॉन्फ़िगरेशन चुनें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeGpuRam`

> उपलब्ध GPU RAM द्वारा कॉन्फ़िगरेशन चुनें

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

> एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें

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

> AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें

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

> सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना।

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

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-NextRefactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/VSCode.md)
