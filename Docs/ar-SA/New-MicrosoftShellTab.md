# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x`

## Synopsis

> إنشاء علامة تبويب جديدة في محطة Windows Terminal تعمل بواسطة PowerShell.

## Description

يفتح علامة تبويب جديدة في ويندوز تيرمينال عن طريق محاكاة اختصار لوحة المفاتيح Ctrl+Shift+T.
تقوم الدالة بإظهار نافذة باورشيل إلى المقدمة، وإرسال مجموعة المفاتيح، وإغلاق علامة التبويب الحالية بشكل اختياري بعد تأخير.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | الاحتفاظ بالعلامة التبويب الحالية مفتوحة بعد إنشاء علامة تبويب جديدة |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Parameter Details

### `-DontCloseThisTab`

> الاحتفاظ بالعلامة التبويب الحالية مفتوحة بعد إنشاء علامة تبويب جديدة

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
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/UtcNow.md)
