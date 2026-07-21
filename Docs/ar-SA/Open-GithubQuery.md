# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> يفتح استعلام بحث في مستودع جيت‌هب في متصفح ويب أو ينفذ عمليات بحث متقدمة ضد واجهة برمجة تطبيقات جيت‌هب REST مع دعم جميع المؤهلات المتاحة وفئات البحث (المستودعات، الكود، المشكلات، المستخدمين، الالتزامات، المناقشات، المواضيع، الويكي).

## Description

يفتح استعلام بحث في مستودع Github في متصفح ويب مع خيارات تخصيص واسعة أو يقوم بعمليات بحث متقدمة عبر API. توفر هذه الوظيفة واجهة قوية للوصول السريع إلى مستودعات Github من PowerShell مع دعم متصفحات متعددة، وتحديد موضع النافذة، وتصفية اللغة، وأتمتة لوحة المفاتيح، أو استرداد البيانات المهيكلة عبر API. الميزات الرئيسية:

دعم استعلامات بحث متعددة مع إدخال خط الأنابيب
تصفية خاصة باللغة مع الترجمة التلقائية
دعم متصفحات متعددة (Edge، Chrome، Firefox)
تحديد موضع النافذة المتقدم واختيار الشاشة
وضع التصفح الخاص/المجهول
وضع التطبيق للتصفح بدون تشتيت
أتمتة لوحة المفاتيح وإدارة التركيز
خيارات إرجاع عنوان URL للاستخدام البرمجي
بحث API متقدم مع مؤهلات، وفرز، وترقيم الصفحات
دعم جميع أنواع بحث GitHub
المصادقة باستخدام رمز الوصول الشخصي
تنفيذ المهام غير المتزامنة لعمليات بحث API
إخراج JSON خام أو كائن مهيكل

تقوم الوظيفة تلقائيًا ببناء عناوين URL لبحث GitHub لوضع الويب أو نقاط نهاية API لوضع API وتمرير جميع المعلمات المتعلقة بالمتصفح إلى وظيفة Open-Webbrowser الأساسية للحصول على سلوك متسق.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | استعلامات البحث التي سيتم تنفيذها على Github. يدعم استعلامات متعددة وإدخال خط الأنابيب للبحث المجمع. سيتم ترميز كل استعلام بعنوان URL واستخدامه للبحث في Github. |
| `-Type` | String | — | — | Named | `'Code'` | الفئة الرئيسية للبحث. الافتراضي هو 'Code'. |
| `-In` | String[] | — | — | Named | — | الحقول المراد البحث فيها. سيتم قبول الخيارات الصالحة فقط للنوع المحدد. |
| `-User` | String | — | — | Named | — | تقييد البحث بموارد المستخدم (المستودعات، الكود، المشكلات، إلخ). |
| `-Org` | String | — | — | Named | — | تقييد البحث بمؤسسة معينة. |
| `-Repo` | String | — | — | Named | — | تقييد البحث بمستودع مُسمى ('owner/repo'). |
| `-Path` | String | — | — | Named | — | تقييد بحث الكود بمسارات ملفات أو أدلة محددة (يدعم أحرف البدل وفقًا لصيغة بحث GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | تصفية النتائج حسب اسم الملف (وليس المسار). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | تقييد البحث في الشيفرة البرمجية بامتدادات الملفات. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | تصفية حسب لغة البرمجة. |
| `-Size` | String | — | — | Named | — | حجم الملف/المستودع. يدعم الصيغة الرقمية وصيغة النطاق (انظر الأمثلة). |
| `-State` | String | — | — | Named | — | للمشكلات/طلبات السحب (PR). *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | المشكلات/طلبات السحب: اقتصارها على تلك التي أنشأها مستخدم محدد. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | المشكلات/طلبات السحب: قصرها على تلك المُسندة إلى مستخدم. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | القضايا/طلبات السحب: يجب أن تكون مُوسومة بجميع السلاسل النصية المحددة. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | المشكلات/طلبات السحب: يجب أن تفتقر إلى بيانات وصفية معينة (مثل: التصنيف، المرحلة). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | حقل الفرز (يعتمد على النوع). على سبيل المثال، "stars"، "forks"، "updated"، إلخ. |
| `-Order` | String | — | — | Named | — | ترتيب "تصاعدي" أو "تنازلي" للفرز. |
| `-PerPage` | Int32 | — | — | Named | `10` | حجم الصفحة (الحد الأقصى 100). |
| `-Page` | Int32 | — | — | Named | `1` | رقم الصفحة للنتائج المقسمة إلى صفحات. |
| `-Token` | String | — | — | Named | — | رمز الدخول من GitHub OAuth أو رمز الوصول الشخصي. إذا لم يتم توفيره، يتم استخدام GITHUB_TOKEN أو متغير البيئة. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | تعيين رأس طلب HTTP لتفضيلات اللغة في المتصفح. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | التأخير بين إرسال تسلسلات المفاتيح المختلفة بالمللي ثانية. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | الشاشة لعرض النتائج عليها. 0 = الافتراضية، -1 = تجاهل، -2 = الثانوية. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | العرض الأولي لنافذة المتصفح. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | الارتفاع الأولي لنافذة المتصفح. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | الموضع الأولي X لنافذة المتصفح. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | المكان الأولي Y لإطار المتصفح. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | ضغطات المفاتيح لإرسالها إلى نافذة المتصفح، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | مطابقة النتائج الحساسة لحالة الأحرف (حيثما يُدعم ذلك). |
| `-AsJob` | SwitchParameter | — | — | Named | — | قم بتشغيل البحث بشكل غير متزامن كمهمة PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | @{response=.SYNOPSIS
يتيح هذا الأمر إمكانية تسجيل الدخول إلى حساب المستخدم مرة واحدة لفتح نشاط مستمر.} *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | استخدم وضع API بدلاً من الفتح في متصفح الويب. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | يفتح المتصفح في وضع التصفح الخاص/المجهول للبحث بشكل مجهول. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | فرض تمكين منفذ التصحيح، مع إيقاف المتصفحات الحالية إذا لزم الأمر. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | يفتح نتائج البحث في متصفح مايكروسوفت إيدج. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | يفتح نتائج البحث في متصفح جوجل كروم. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | يفتح نتائج البحث في Microsoft Edge أو Google Chrome، اعتمادًا على ما هو المتصفح الافتراضي. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | يفتح نتائج البحث في متصفح موزيلا فايرفوكس. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | استخدام متصفح مُدار بواسطة Playwright بدلاً من المتصفح المُثبّت على نظام التشغيل |
| `-Webkit` | SwitchParameter | — | — | Named | — | يفتح متصفح WebKit المُدار بواسطة Playwright. يتضمن -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | قم بتشغيل المتصفح بدون نافذة مرئية |
| `-All` | SwitchParameter | — | — | Named | — | يفتح في جميع المتصفحات الحديثة المسجلة |
| `-FullScreen` | SwitchParameter | — | — | Named | — | يفتح المتصفح في وضع ملء الشاشة. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح على الجانب الأيسر من الشاشة. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح على الجانب الأيمن من الشاشة. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح على الجانب العلوي من الشاشة. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح على الجانب السفلي من الشاشة. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح في وسط الشاشة. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | إخفاء عناصر تحكم المتصفح. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | منع تحميل إضافات المتصفح. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | تعطيل مانع النوافذ المنبثقة في المتصفح. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | التركيز على نافذة المتصفح بعد الفتح. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ضبط نافذة المتصفح إلى المقدمة بعد الفتح. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | قم بتكبير النافذة بعد التموضع. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | استعادة تركيز نافذة PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | لا تعيد استخدام نافذة المتصفح الحالية، بل أنشئ نافذة جديدة. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | يُرجع كائن [System.Diagnostics.Process] لعملية المتصفح في وضع الويب أو كائن استعلام في وضع API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | لا تفتح متصفح الويب، فقط أعد الرابط. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | بعد فتح متصفح الويب، أعد عنوان URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | تجاوز أحرف التحكم عند إرسال المفاتيح. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | منع إعادة تركيز لوحة المفاتيح إلى PowerShell بعد إرسال المفاتيح. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | أرسل Shift+Enter بدلاً من Enter العادي لفواصل الأسطر. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | إزالة حدود النافذة وشريط العنوان للحصول على مظهر أنظف. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح جنبًا إلى جنب مع PowerShell على نفس الشاشة. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدم الإعدادات البديلة المخزنة في الجلسة للتفضيلات. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة للتفضيلات. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> استعلامات البحث التي سيتم تنفيذها على Github. يدعم استعلامات متعددة وإدخال خط الأنابيب للبحث المجمع. سيتم ترميز كل استعلام بعنوان URL واستخدامه للبحث في Github.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> الفئة الرئيسية للبحث. الافتراضي هو 'Code'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> الحقول المراد البحث فيها. سيتم قبول الخيارات الصالحة فقط للنوع المحدد.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> تقييد البحث بموارد المستخدم (المستودعات، الكود، المشكلات، إلخ).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> تقييد البحث بمؤسسة معينة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> تقييد البحث بمستودع مُسمى ('owner/repo').

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> تقييد بحث الكود بمسارات ملفات أو أدلة محددة (يدعم أحرف البدل وفقًا لصيغة بحث GitHub).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> تصفية النتائج حسب اسم الملف (وليس المسار).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> تقييد البحث في الشيفرة البرمجية بامتدادات الملفات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> تصفية حسب لغة البرمجة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> حجم الملف/المستودع. يدعم الصيغة الرقمية وصيغة النطاق (انظر الأمثلة).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> للمشكلات/طلبات السحب (PR).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> المشكلات/طلبات السحب: اقتصارها على تلك التي أنشأها مستخدم محدد.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> المشكلات/طلبات السحب: قصرها على تلك المُسندة إلى مستخدم.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> القضايا/طلبات السحب: يجب أن تكون مُوسومة بجميع السلاسل النصية المحددة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> المشكلات/طلبات السحب: يجب أن تفتقر إلى بيانات وصفية معينة (مثل: التصنيف، المرحلة).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> حقل الفرز (يعتمد على النوع). على سبيل المثال، "stars"، "forks"، "updated"، إلخ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> ترتيب "تصاعدي" أو "تنازلي" للفرز.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> حجم الصفحة (الحد الأقصى 100).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> رقم الصفحة للنتائج المقسمة إلى صفحات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> رمز الدخول من GitHub OAuth أو رمز الوصول الشخصي. إذا لم يتم توفيره، يتم استخدام GITHUB_TOKEN أو متغير البيئة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> تعيين رأس طلب HTTP لتفضيلات اللغة في المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> التأخير بين إرسال تسلسلات المفاتيح المختلفة بالمللي ثانية.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> الشاشة لعرض النتائج عليها. 0 = الافتراضية، -1 = تجاهل، -2 = الثانوية.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> العرض الأولي لنافذة المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> الارتفاع الأولي لنافذة المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> الموضع الأولي X لنافذة المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> المكان الأولي Y لإطار المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> ضغطات المفاتيح لإرسالها إلى نافذة المتصفح، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> مطابقة النتائج الحساسة لحالة الأحرف (حيثما يُدعم ذلك).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> قم بتشغيل البحث بشكل غير متزامن كمهمة PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> @{response=.SYNOPSIS
يتيح هذا الأمر إمكانية تسجيل الدخول إلى حساب المستخدم مرة واحدة لفتح نشاط مستمر.}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> استخدم وضع API بدلاً من الفتح في متصفح الويب.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> يفتح المتصفح في وضع التصفح الخاص/المجهول للبحث بشكل مجهول.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> فرض تمكين منفذ التصحيح، مع إيقاف المتصفحات الحالية إذا لزم الأمر.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> يفتح نتائج البحث في متصفح مايكروسوفت إيدج.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> يفتح نتائج البحث في متصفح جوجل كروم.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> يفتح نتائج البحث في Microsoft Edge أو Google Chrome، اعتمادًا على ما هو المتصفح الافتراضي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> يفتح نتائج البحث في متصفح موزيلا فايرفوكس.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> يفتح المتصفح في وضع ملء الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> ضع نافذة المتصفح على الجانب الأيسر من الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> ضع نافذة المتصفح على الجانب الأيمن من الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> ضع نافذة المتصفح على الجانب العلوي من الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> ضع نافذة المتصفح على الجانب السفلي من الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> وضع نافذة المتصفح في وسط الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> إخفاء عناصر تحكم المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> منع تحميل إضافات المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> تعطيل مانع النوافذ المنبثقة في المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> التركيز على نافذة المتصفح بعد الفتح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> ضبط نافذة المتصفح إلى المقدمة بعد الفتح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> قم بتكبير النافذة بعد التموضع.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> استعادة تركيز نافذة PowerShell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> لا تعيد استخدام نافذة المتصفح الحالية، بل أنشئ نافذة جديدة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> يُرجع كائن [System.Diagnostics.Process] لعملية المتصفح في وضع الويب أو كائن استعلام في وضع API.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> لا تفتح متصفح الويب، فقط أعد الرابط.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> بعد فتح متصفح الويب، أعد عنوان URL.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyEscape`

> تجاوز أحرف التحكم عند إرسال المفاتيح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> منع إعادة تركيز لوحة المفاتيح إلى PowerShell بعد إرسال المفاتيح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> أرسل Shift+Enter بدلاً من Enter العادي لفواصل الأسطر.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> إزالة حدود النافذة وشريط العنوان للحصول على مظهر أنظف.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> ضع نافذة المتصفح جنبًا إلى جنب مع PowerShell على نفس الشاشة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> استخدم الإعدادات البديلة المخزنة في الجلسة للتفضيلات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> مسح الإعدادات البديلة المخزنة في الجلسة للتفضيلات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SkipSession`

> تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-BuiltWithSiteInfo.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-YoutubeQuery.md)
