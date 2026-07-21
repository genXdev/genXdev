# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> يبدأ لعبة ثعبان بسيطة في وحدة التحكم.

## Description

تقوم هذه الدالة بتهيئة وتشغيل لعبة ثعبان أساسية داخل وحدة تحكم PowerShell. يتحكم اللاعب في الثعبان باستخدام مفاتيح الأسهم أو مفاتيح WASD، بهدف أكل الطعام وزيادة الطول مع تجنب الاصطدام بالجدران أو بالثعبان نفسه. تتميز اللعبة بضبط السرعة ديناميكيًا بناءً على المساحة المتاحة وطول الثعبان. بشكل افتراضي، يتم مسح وحدة التحكم قبل البدء.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | الطول الأولي للثعبان (الافتراضي: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | سرعة اللعبة بالمللي ثانية بين الحركات (الافتراضي: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | يمنع مسح وحدة التحكم قبل بدء اللعبة |
| `-WithMaze` | SwitchParameter | — | — | Named | — | يرسم متاهة داخل منطقة اللعب باستخدام رموز رسم ASCII للحوائط والخطوط، تشبه الحدود. |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | يعرض أقصر مسار من رأس الثعبان إلى الطعام باستخدام نقاط خضراء صغيرة مركزية |
| `-MazeWidth` | Int32 | — | — | Named | `2` | الحد الأدنى لعرض الممر للمتاهة (1-10، القيمة الافتراضية: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

يبدأ لعبة الثعبان بالإعدادات الافتراضية (5 أجزاء، سرعة 300 مللي ثانية).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

يبدأ لعبة الثعبان دون مسح وحدة التحكم، بثعبان أقصر وسرعة أسرع.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

يبدأ اللعبة باستخدام الاسم المستعار مع ثعبان أولي أطول.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

يبدأ لعبة الثعبان مع متاهة في ساحة اللعب.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

يبدأ لعبة الثعبان مع متاهة ويعرض أقصر مسار من الثعبان إلى الطعام باستخدام نقاط خضراء.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

يبدأ لعبة الثعبان بمتاهة ذات ممرات أوسع (مسافة 5 خلايا على الأقل) لتسهيل التنقل.

## Parameter Details

### `-InitialLength <Int32>`

> الطول الأولي للثعبان (الافتراضي: 5)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speed <Int32>`

> سرعة اللعبة بالمللي ثانية بين الحركات (الافتراضي: 300)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoClear`

> يمنع مسح وحدة التحكم قبل بدء اللعبة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithMaze`

> يرسم متاهة داخل منطقة اللعب باستخدام رموز رسم ASCII للحوائط والخطوط، تشبه الحدود.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowRoute`

> يعرض أقصر مسار من رأس الثعبان إلى الطعام باستخدام نقاط خضراء صغيرة مركزية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MazeWidth <Int32>`

> الحد الأدنى لعرض الممر للمتاهة (1-10، القيمة الافتراضية: 2)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `2` |
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
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/UtcNow.md)
