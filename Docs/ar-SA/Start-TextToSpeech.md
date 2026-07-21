# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> يحول النص إلى كلام باستخدام محرك TTS العصبي من Microsoft Edge.

## Description

يستخدم محرك تحويل النص إلى كلام العصبي من Microsoft Edge (عبر EdgeTTS.DotNet) لتحويل النص إلى كلام بأصوات طبيعية. توفر هذه الدالة إمكانيات مرنة لتحويل النص إلى كلام مع دعم لأصوات مختلفة، والإعدادات المحلية، وضبط الإيقاع (المعدل، الصوت، درجة الصوت)، وخيارات التشغيل المتزامن/غير المتزامن. يمكنها التعامل مع كل من السلاسل النصية الفردية ومصفوفات النص.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | النص المراد نطقه *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | اسم الصوت المستخدم في الكلام |
| `-Locale` | String | — | — | Named | `$null` | معرف اللغة المحلية المراد استخدامه، مثل 'ar-SA' |
| `-Rate` | String | — | — | Named | `$null` | معدل الكلام، مثل "+0%"، "-20%"، "+50%" |
| `-Volume` | String | — | — | Named | `$null` | مستوى الصوت، مثلاً "+0%"، "-25%"، "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | إزاحة التردد، مثل "+0Hz"، "-10Hz"، "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | إخراج النص الذي يتم التحدث به إلى المسار |
| `-Wait` | SwitchParameter | — | — | Named | — | انتظار اكتمال الكلام قبل المتابعة |

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

> النص المراد نطقه

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

> اسم الصوت المستخدم في الكلام

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

> معرف اللغة المحلية المراد استخدامه، مثل 'ar-SA'

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

> معدل الكلام، مثل "+0%"، "-20%"، "+50%"

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

> مستوى الصوت، مثلاً "+0%"، "-25%"، "+100%"

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

> إزاحة التردد، مثل "+0Hz"، "-10Hz"، "+20Hz"

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

> إخراج النص الذي يتم التحدث به إلى المسار

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

> انتظار اكتمال الكلام قبل المتابعة

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/UtcNow.md)
