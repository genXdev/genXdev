# Open-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wb`

## Synopsis

> يفتح عناوين URL في نافذة متصفح واحدة أو أكثر مع إمكانية تحديد الموضع والتنسيق.

## Description

توفر هذه الوظيفة غلافًا متقدمًا حول تشغيل المتصفح مع خيارات واسعة لتحديد موضع النافذة واختيار المتصفح وتخصيص السلوك. وهي تدعم متصفحات متعددة بما في ذلك Edge وChrome وFirefox مع ميزات مثل التصفح الخاص ووضع التطبيق وإدارة النوافذ بدقة.

الميزات الرئيسية:
- الكشف الذكي عن المتصفح واختياره
- تحديد موضع النافذة (يسار، يمين، أعلى، أسفل، وسط، ملء الشاشة)
- دعم الشاشات المتعددة مع اختيار الشاشة تلقائيًا أو يدويًا
- دعم وضع التصفح الخاص/المخفي
- وضع التطبيق للتصفح بدون تشتيت
- خيارات حظر الإضافات والنوافذ المنبثقة
- إدارة التركيز ومعالجة النوافذ
- فتح عناوين URL دفعة واحدة عبر متصفحات متعددة
- أتمتة ضغطات المفاتيح لنوافذ المتصفح

يمكن للوظيفة اكتشاف قدرات النظام تلقائيًا وضبط السلوك وفقًا لذلك. بالنسبة للمتصفحات غير المثبتة على النظام، يتم تخطي العمليات بصمت دون أخطاء.

## Syntax

```powershell
Open-Webbrowser [[-Url] <String[]>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-ForceConsent] [-FullScreen] [-Headless] [-Height <Int32>] [-Input <String>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-PreferPlaywrightBrowser] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String[] | — | — | 0 | — | عناوين URL لفتحها في المتصفح |
| `-Input` | String | — | ✅ (ByValue, ByPropertyName) | Named | — | عناوين URL لفتحها في المتصفح |
| `-Monitor` | Int32 | — | — | 1 | `-2` | الشاشة المراد استخدامها، 0 = الافتراضية، -1 = تجاهل، -2 = الشاشة الثانوية المكونة، القيمة الافتراضية هي $Global:DefaultSecondaryMonitor أو 2 إذا لم يتم العثور عليها |
| `-Width` | Int32 | — | — | Named | `-1` | العرض الأولي لإطار نافذة متصفح الويب |
| `-Height` | Int32 | — | — | Named | `-1` | الارتفاع الأولي لنافذة متصفح الويب |
| `-X` | Int32 | — | — | Named | `-999999` | الموضع الأفقي الأولي لنافذة متصفح الويب |
| `-Y` | Int32 | — | — | Named | `-999999` | الموضع الرأسي الأولي لنافذة متصفح الويب |
| `-AcceptLang` | String | — | — | Named | `$null` | تعيين رأس HTTP لقبول اللغة للمتصفح |
| `-Force` | SwitchParameter | — | — | Named | — | فرض إغلاق مثيلات المتصفح الحالية قبل فتح مثيل جديد |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | فرض إعادة عرض حوار الموافقة على التثبيت |
| `-Edge` | SwitchParameter | — | — | Named | — | يفتح في مايكروسوفت إيدج |
| `-Chrome` | SwitchParameter | — | — | Named | — | يفتح في جوجل كروم |
| `-Chromium` | SwitchParameter | — | — | Named | — | يُفتح في Microsoft Edge أو Google Chrome، اعتمادًا على المتصفح الافتراضي |
| `-Firefox` | SwitchParameter | — | — | Named | — | يفتح في فايرفوكس |
| `-All` | SwitchParameter | — | — | Named | — | يفتح في جميع المتصفحات الحديثة المسجلة |
| `-Left` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح على الجانب الأيسر من الشاشة |
| `-Right` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح في الجانب الأيمن من الشاشة |
| `-Top` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح في الجزء العلوي من الشاشة |
| `-Bottom` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح في الجزء السفلي من الشاشة |
| `-Centered` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح في وسط الشاشة |
| `-FullScreen` | SwitchParameter | — | — | Named | — | يفتح في وضع ملء الشاشة |
| `-Private` | SwitchParameter | — | — | Named | — | يفتح في وضع التصفح المتخفي/الخاص |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | إخفاء عناصر تحكم المتصفح |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | منع تحميل إضافات المتصفح |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | تعطيل مانع النوافذ المنبثقة |
| `-NewWindow` | SwitchParameter | — | — | Named | — | لا تعيد استخدام نافذة المتصفح الحالية، بدلاً من ذلك، أنشئ نافذة جديدة |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | تركيز نافذة المتصفح بعد الفتح |
| `-SetForeground` | SwitchParameter | — | — | Named | — | تعيين نافذة المتصفح إلى المقدمة بعد الفتح |
| `-Maximize` | SwitchParameter | — | — | Named | — | قم بتكبير النافذة بعد التموضع |
| `-SetRestored` | SwitchParameter | — | — | Named | — | استعادة النافذة إلى الحالة الطبيعية بعد تحديد الموضع |
| `-PassThru` | SwitchParameter | — | — | Named | — | يعيد كائن PowerShell الخاص بـ browserprocess |
| `-NoBorders` | SwitchParameter | — | — | Named | — | إزالة حدود النافذة |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | استعادة تركيز نافذة PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح إما في وضع ملء الشاشة على شاشة مختلفة عن PowerShell، أو جنبًا إلى جنب مع PowerShell على نفس الشاشة |
| `-KeysToSend` | String[] | — | — | Named | — | ضغطات المفاتيح لإرسالها إلى النافذة، راجع الوثائق الخاصة بالـ cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | قم بتجاوز أحرف التحكم والمعدلات عند إرسال المفاتيح |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | الحفاظ على تركيز لوحة المفاتيح على النافذة المستهدفة عند إرسال المفاتيح |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | التأخير بين السلاسل النصية المختلفة عند إرسال المفاتيح بالمللي ثانية |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-PlayWright` | SwitchParameter | — | — | Named | — | استخدام متصفح مُدار بواسطة Playwright بدلاً من المتصفح المُثبّت على نظام التشغيل |
| `-PreferPlaywrightBrowser` | SwitchParameter | — | — | Named | — | استخدم متصفح Playwright المرفق بدلاً من المتصفح المثبت في نظام التشغيل عبر القناة. يؤثر فقط على أوضاع Chrome و Edge و Chromium. يستلزم -PlayWright |
| `-Webkit` | SwitchParameter | — | — | Named | — | يفتح متصفح WebKit المُدار بواسطة Playwright. يتضمن -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | قم بتشغيل المتصفح بدون نافذة مرئية |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | الموافقة تلقائيًا على تثبيت برامج الطرف الثالث (متصفحات Playwright) |

## Examples

### wb -PlayWright https://github.com

```powershell
wb -PlayWright https://github.com
```

يفتح GitHub في متصفح كروم المُدار بواسطة Playwright.

### Open-Webbrowser -Url "https://github.com"

```powershell
Open-Webbrowser -Url "https://github.com"
```

يفتح GitHub في المتصفح الافتراضي.

### Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left

```powershell
Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left
```

يفتح Stack Overflow في النصف الأيسر من الشاشة الأولى.

### wb "https://google.com" -m 0 -fs

```powershell
wb "https://google.com" -m 0 -fs
```

يفتح Google في وضع ملء الشاشة على الشاشة الرئيسية باستخدام الأسماء المستعارة.

### Open-Webbrowser -Chrome -Private -NewWindow

```powershell
Open-Webbrowser -Chrome -Private -NewWindow
```

يفتح نافذة Chrome جديدة في وضع التصفح المتخفي.

### "https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All

```powershell
"https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All
```

يفتح عناوين URL متعددة في جميع المتصفحات المثبتة عبر خط الأنابيب.

### Open-Webbrowser -Monitor 0 -Right

```powershell
Open-Webbrowser -Monitor 0 -Right
```

إعادة وضع نافذة المتصفح المفتوحة بالفعل إلى الجانب الأيمن من الشاشة الأساسية.

### Open-Webbrowser -ApplicationMode -Url "https://app.example.com"

```powershell
Open-Webbrowser -ApplicationMode -Url "https://app.example.com"
```

يفتح تطبيق ويب في وضع التطبيق دون عناصر تحكم المتصفح.

## Parameter Details

### `-Url <String[]>`

> عناوين URL لفتحها في المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Input <String>`

> عناوين URL لفتحها في المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Value`, `Uri`, `FullName`, `Website`, `WebsiteUrl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> الشاشة المراد استخدامها، 0 = الافتراضية، -1 = تجاهل، -2 = الشاشة الثانوية المكونة، القيمة الافتراضية هي $Global:DefaultSecondaryMonitor أو 2 إذا لم يتم العثور عليها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> العرض الأولي لإطار نافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> الارتفاع الأولي لنافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> الموضع الأفقي الأولي لنافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> الموضع الرأسي الأولي لنافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> تعيين رأس HTTP لقبول اللغة للمتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> فرض إغلاق مثيلات المتصفح الحالية قبل فتح مثيل جديد

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> فرض إعادة عرض حوار الموافقة على التثبيت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> يفتح في مايكروسوفت إيدج

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> يفتح في جوجل كروم

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> يُفتح في Microsoft Edge أو Google Chrome، اعتمادًا على المتصفح الافتراضي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> يفتح في فايرفوكس

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> يفتح في جميع المتصفحات الحديثة المسجلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> وضع نافذة المتصفح على الجانب الأيسر من الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> ضع نافذة المتصفح في الجانب الأيمن من الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> وضع نافذة المتصفح في الجزء العلوي من الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> وضع نافذة المتصفح في الجزء السفلي من الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> ضع نافذة المتصفح في وسط الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> يفتح في وضع ملء الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> يفتح في وضع التصفح المتخفي/الخاص

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> إخفاء عناصر تحكم المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> منع تحميل إضافات المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> تعطيل مانع النوافذ المنبثقة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> لا تعيد استخدام نافذة المتصفح الحالية، بدلاً من ذلك، أنشئ نافذة جديدة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> تركيز نافذة المتصفح بعد الفتح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> تعيين نافذة المتصفح إلى المقدمة بعد الفتح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> قم بتكبير النافذة بعد التموضع

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> استعادة النافذة إلى الحالة الطبيعية بعد تحديد الموضع

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> يعيد كائن PowerShell الخاص بـ browserprocess

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> إزالة حدود النافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> استعادة تركيز نافذة PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> ضع نافذة المتصفح إما في وضع ملء الشاشة على شاشة مختلفة عن PowerShell، أو جنبًا إلى جنب مع PowerShell على نفس الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> ضغطات المفاتيح لإرسالها إلى النافذة، راجع الوثائق الخاصة بالـ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> قم بتجاوز أحرف التحكم والمعدلات عند إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> الحفاظ على تركيز لوحة المفاتيح على النافذة المستهدفة عند إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> التأخير بين السلاسل النصية المختلفة عند إرسال المفاتيح بالمللي ثانية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي

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

> مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي

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

> تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> استخدام متصفح مُدار بواسطة Playwright بدلاً من المتصفح المُثبّت على نظام التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferPlaywrightBrowser`

> استخدم متصفح Playwright المرفق بدلاً من المتصفح المثبت في نظام التشغيل عبر القناة. يؤثر فقط على أوضاع Chrome و Edge و Chromium. يستلزم -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> يفتح متصفح WebKit المُدار بواسطة Playwright. يتضمن -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> قم بتشغيل المتصفح بدون نافذة مرئية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> الموافقة تلقائيًا على تثبيت برامج الطرف الثالث (متصفحات Playwright)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Consent` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BrowserBookmarks.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-WebsiteInAllBrowsers.md)
