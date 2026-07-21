# Open-ChatGPTQuery

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `aicgpt`, `askchatgpt`

## Synopsis

> يفتح استعلام ChatGPT في متصفح ويب.

## Description

يفتح ChatGPT في متصفح ويب، ويدخل الاستعلام المحدد تلقائيًا ويقدمه. يدعم استعلامات متعددة سيتم تنفيذها باستخدام الوظيفة الأساسية Open-WebsiteAndPerformQuery. توفر هذه الوظيفة طريقة ملائمة للتفاعل مع ChatGPT من OpenAI عبر PowerShell مع خيارات تكوين متصفح واسعة.

## Syntax

```powershell
Open-ChatGPTQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | الاستعلام الذي سيتم تنفيذه. |
| `-Language` | String | — | — | 1 | — | لغة نتائج البحث المُعادة |
| `-Private` | SwitchParameter | — | — | Named | — | يفتح في وضع التصفح المتخفي/الخاص |
| `-Force` | SwitchParameter | — | — | Named | — | فرض تمكين منفذ التصحيح، مع إيقاف المتصفحات الحالية إذا لزم الأمر |
| `-Edge` | SwitchParameter | — | — | Named | — | يفتح في مايكروسوفت إيدج |
| `-Chrome` | SwitchParameter | — | — | Named | — | يفتح في جوجل كروم |
| `-Chromium` | SwitchParameter | — | — | Named | — | يُفتح في Microsoft Edge أو Google Chrome، اعتمادًا على المتصفح الافتراضي |
| `-Firefox` | SwitchParameter | — | — | Named | — | يفتح في فايرفوكس |
| `-PlayWright` | SwitchParameter | — | — | Named | — | استخدام متصفح مُدار بواسطة Playwright بدلاً من المتصفح المُثبّت على نظام التشغيل |
| `-Webkit` | SwitchParameter | — | — | Named | — | يفتح متصفح WebKit المُدار بواسطة Playwright. يتضمن -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | قم بتشغيل المتصفح بدون نافذة مرئية |
| `-All` | SwitchParameter | — | — | Named | — | يفتح في جميع المتصفحات الحديثة المسجلة |
| `-Monitor` | Int32 | — | — | Named | `-1` | الشاشة المستخدمة، 0 = الشاشة الافتراضية، -1 = تجاهل، -2 = الشاشة الثانوية المُهيأة، القيمة الافتراضية هي -1، بدون تحديد موضع |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | عرض نافذة المتصفح |
| `-Width` | Int32 | — | — | Named | `-1` | العرض الأولي لإطار نافذة متصفح الويب |
| `-Height` | Int32 | — | — | Named | `-1` | الارتفاع الأولي لنافذة متصفح الويب |
| `-X` | Int32 | — | — | Named | `-999999` | الموضع الأفقي الأولي لنافذة متصفح الويب |
| `-Y` | Int32 | — | — | Named | `-999999` | الموضع الرأسي الأولي لنافذة متصفح الويب |
| `-Left` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح على الجانب الأيسر من الشاشة |
| `-Right` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح في الجانب الأيمن من الشاشة |
| `-Top` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح في الجزء العلوي من الشاشة |
| `-Bottom` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح في الجزء السفلي من الشاشة |
| `-Centered` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح في وسط الشاشة |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | إخفاء عناصر تحكم المتصفح |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | منع تحميل إضافات المتصفح |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | تعطيل مانع النوافذ المنبثقة |
| `-AcceptLang` | String | — | — | Named | — | تعيين رأس HTTP لقبول اللغة للمتصفح |
| `-KeysToSend` | String[] | — | — | Named | — | مفاتيح الضغط لإرسالها إلى نافذة المتصفح، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | تركيز نافذة المتصفح بعد الفتح |
| `-SetForeground` | SwitchParameter | — | — | Named | — | تعيين نافذة المتصفح إلى المقدمة بعد الفتح |
| `-Maximize` | SwitchParameter | — | — | Named | — | قم بتكبير النافذة بعد التموضع |
| `-SetRestored` | SwitchParameter | — | — | Named | — | استعادة النافذة إلى الحالة الطبيعية بعد تحديد الموضع |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | استعادة تركيز نافذة PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | لا تعيد استخدام نافذة المتصفح الحالية، بدلاً من ذلك، أنشئ نافذة جديدة |
| `-PassThru` | SwitchParameter | — | — | Named | — | إرجاع كائن [System.Diagnostics.Process] الخاص بعملية المتصفح |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | إفلات أحرف التحكم عند إرسال المفاتيح |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | منع إعادة التركيز على PowerShell بعد إرسال المفاتيح |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | قم بإرسال Shift+Enter بدلاً من Enter العادي لفاصل الأسطر |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | التأخير بين إرسال تسلسلات المفاتيح المختلفة بالملي ثانية |
| `-NoBorders` | SwitchParameter | — | — | Named | — | يزيل حدود نافذة المتصفح |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-SideBySide` | SwitchParameter | — | — | Named | — | قم بتوسيط نافذة المتصفح إما بملء الشاشة على شاشة مختلفة عن PowerShell، أو بجانب PowerShell على نفس الشاشة. |

## Examples

### Open-ChatGPTQuery -Queries "What is PowerShell?", "How do I use functions?"

```powershell
Open-ChatGPTQuery -Queries "What is PowerShell?", "How do I use functions?"
```

تقديم استفسارات متعددة باستخدام اسم المعلمة الكامل.

### "What is PowerShell?" | aicgpt

```powershell
"What is PowerShell?" | aicgpt
```

إرسال استعلام باستخدام اسم مستعار وخط أنابيب.

## Parameter Details

### `-Queries <String[]>`

> الاستعلام الذي سيتم تنفيذه.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> لغة نتائج البحث المُعادة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Force`

> فرض تمكين منفذ التصحيح، مع إيقاف المتصفحات الحالية إذا لزم الأمر

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
### `-Monitor <Int32>`

> الشاشة المستخدمة، 0 = الشاشة الافتراضية، -1 = تجاهل، -2 = الشاشة الثانوية المُهيأة، القيمة الافتراضية هي -1، بدون تحديد موضع

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> عرض نافذة المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
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
### `-AcceptLang <String>`

> تعيين رأس HTTP لقبول اللغة للمتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> مفاتيح الضغط لإرسالها إلى نافذة المتصفح، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-PassThru`

> إرجاع كائن [System.Diagnostics.Process] الخاص بعملية المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> إفلات أحرف التحكم عند إرسال المفاتيح

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

> منع إعادة التركيز على PowerShell بعد إرسال المفاتيح

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

> قم بإرسال Shift+Enter بدلاً من Enter العادي لفاصل الأسطر

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

> التأخير بين إرسال تسلسلات المفاتيح المختلفة بالملي ثانية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> يزيل حدود نافذة المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
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
### `-SideBySide`

> قم بتوسيط نافذة المتصفح إما بملء الشاشة على شاشة مختلفة عن PowerShell، أو بجانب PowerShell على نفس الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BingCopilotQuery.md)
- [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-CloudLLMChat.md)
- [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-DeepSearchQuery.md)
- [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GithubCopilotQuery.md)
- [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GoogleGeminiQuery.md)
- [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-XGrokQuery.md)
