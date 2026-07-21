# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> माइक्रोसॉफ्ट एज के न्यूरल टीटीएस इंजन का उपयोग करके टेक्स्ट को स्पीच में बदलता है।

## Description

माइक्रोसॉफ्ट एज के न्यूरल टीटीएस इंजन (EdgeTTS.DotNet के माध्यम से) का उपयोग करके प्राकृतिक ध्वनि वाली आवाजों के साथ टेक्स्ट को भाषण में बदलता है। यह फ़ंक्शन विभिन्न आवाज़ों, स्थानों, प्रोसोडी समायोजन (दर, वॉल्यूम, पिच) और सिंक्रोनस/एसिंक्रोनस प्लेबैक विकल्पों के समर्थन के साथ लचीली टेक्स्ट-टू-स्पीच क्षमताएं प्रदान करता है। यह एकल स्ट्रिंग और टेक्स्ट की सरणी दोनों को संभाल सकता है।

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | बोले जाने वाला पाठ *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | भाषण के लिए उपयोग की जाने वाली आवाज़ का नाम |
| `-Locale` | String | — | — | Named | `$null` | उपयोग करने के लिए भाषा लोकेल आईडी, उदा. 'en-US' |
| `-Rate` | String | — | — | Named | `$null` | भाषण दर, जैसे "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | वॉल्यूम स्तर, उदा. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | पिच शिफ्ट, जैसे "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | पाइपलाइन को बोला जा रहा पाठ आउटपुट करें |
| `-Wait` | SwitchParameter | — | — | Named | — | भाषण पूरा होने तक प्रतीक्षा करें |

## Examples

### Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait

```powershell
Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait
```

### "Hello World" | say

```powershell
"Hello World" | say
```

### say "Hello World" -Rate "+50%" -Pitch "-5Hz"

```powershell
say "Hello World" -Rate "+50%" -Pitch "-5Hz"
```

## Parameter Details

### `-Lines <String[]>`

> बोले जाने वाला पाठ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | strings |

<hr/>
### `-VoiceName <String>`

> भाषण के लिए उपयोग की जाने वाली आवाज़ का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Locale <String>`

> उपयोग करने के लिए भाषा लोकेल आईडी, उदा. 'en-US'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Rate <String>`

> भाषण दर, जैसे "+0%", "-20%", "+50%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Volume <String>`

> वॉल्यूम स्तर, उदा. "+0%", "-25%", "+100%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pitch <String>`

> पिच शिफ्ट, जैसे "+0Hz", "-10Hz", "+20Hz"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> पाइपलाइन को बोला जा रहा पाठ आउटपुट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Wait`

> भाषण पूरा होने तक प्रतीक्षा करें

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/UtcNow.md)
