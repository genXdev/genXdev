# Open-VlcMediaPlayer

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlc`

## Synopsis

> يقوم بتشغيل مشغل الوسائط VLC والتحكم فيه مع خيارات تكوين واسعة.

## Description

توفر هذه الوظيفة واجهة شاملة لتشغيل والتحكم في مشغل الوسائط VLC مع إمكانية تحديد موضع النافذة، واختيار الشاشة، وإعدادات التشغيل، ومرشحات الصوت والفيديو، ومعالجة الترجمة، ودعم اللغات المتعددة، وإعدادات الوكيل للشبكة، وخيارات الأداء المتقدمة. يمكن للوظيفة تثبيت VLC تلقائياً إذا لم يكن موجوداً، وتوفر تخصيصاً واسعاً لسيناريوهات تشغيل الوسائط. تتكامل بسلاسة مع نظام إدارة النوافذ GenXdev، وتدعم أتمتة إدخال لوحة المفاتيح من خلال وظيفة Send-Key.

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | ملف (ملفات) الوسائط أو عنوان (عناوين) URL لفتحه في VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | العرض الأولي للنافذة |
| `-Height` | Int32 | — | — | 2 | `-1` | الارتفاع الأولي للنافذة |
| `-X` | Int32 | — | — | 3 | `-999999` | الموضع الأفقي الأولي للنافذة |
| `-Y` | Int32 | — | — | 4 | `-999999` | الموضع الأولي Y للنافذة |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | اضغط على الأزرار لإرسالها إلى نافذة مشغل VLC، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | تجاهل أحرف التحكم والمعدلات عند إرسال المفاتيح إلى VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح إلى VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | التأخير بين سلاسل الإدخال المختلفة بالميلي ثانية عند إرسال المفاتيح إلى VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | الاحتفاظ بتركيز لوحة المفاتيح على نافذة VLC بعد إرسال المفاتيح |
| `-Monitor` | Int32 | — | — | Named | `-1` | الشاشة المراد استخدامها، 0 = افتراضي، -1 يعني تجاهل |
| `-AspectRatio` | String | — | — | Named | — | نسبة العرض إلى الارتفاع المصدر |
| `-Crop` | String | — | — | Named | — | اقتصاص الفيديو |
| `-SubtitleFile` | String | — | — | Named | — | استخدم ملف الترجمة |
| `-SubtitleScale` | Int32 | — | — | Named | — | عامل تحجيم نص الترجمة |
| `-SubtitleLanguage` | String | — | — | Named | — | لغة الترجمة |
| `-AudioLanguage` | String | — | — | Named | — | لغة الصوت |
| `-PreferredAudioLanguage` | String | — | — | Named | — | لغة الصوت المفضلة |
| `-HttpProxy` | String | — | — | Named | — | وكيل HTTP |
| `-HttpProxyPassword` | String | — | — | Named | — | كلمة مرور الوكيل HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | مستوى الإسهاب |
| `-SubdirectoryBehavior` | String | — | — | Named | — | سلوك الدليل الفرعي |
| `-IgnoredExtensions` | String | — | — | Named | — | الإضافات المُتجاهلة |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | المسار إلى ملف VLC القابل للتنفيذ |
| `-ReplayGainMode` | String | — | — | Named | — | وضع إعادة تشغيل الكسب |
| `-ReplayGainPreamp` | Single | — | — | Named | — | مقدمة كسب إعادة التشغيل |
| `-ForceDolbySurround` | String | — | — | Named | — | فرض اكتشاف دولبي سوراوند |
| `-AudioFilters` | String[] | — | — | Named | — | مرشحات الصوت |
| `-Visualization` | String | — | — | Named | — | التصورات الصوتية |
| `-Deinterlace` | String | — | — | Named | — | إزالة التشابك |
| `-DeinterlaceMode` | String | — | — | Named | — | وضع إزالة التشابك |
| `-VideoFilters` | String[] | — | — | Named | — | وحدة تصفية الفيديو |
| `-VideoFilterModules` | String[] | — | — | Named | — | وحدات تصفية الفيديو |
| `-Modules` | String[] | — | — | Named | — | الوحدات النمطية |
| `-AudioFilterModules` | String[] | — | — | Named | — | وحدات مرشح الصوت |
| `-AudioVisualization` | String | — | — | Named | — | وضع التصور الصوتي |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | لغة الترجمات المصاحبة المفضلة |
| `-IgnoredFileExtensions` | String | — | — | Named | — | امتدادات الملفات المُتجاهلة |
| `-Arguments` | String | — | — | Named | — | وسائط إضافية |
| `-NoBorders` | SwitchParameter | — | — | Named | — | إزالة حدود النافذة |
| `-Left` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب الأيسر من الشاشة |
| `-Right` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب الأيمن من الشاشة |
| `-Top` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب العلوي من الشاشة |
| `-Bottom` | SwitchParameter | — | — | Named | — | ضع النافذة على الجانب السفلي من الشاشة |
| `-Centered` | SwitchParameter | — | — | Named | — | وضع النافذة في وسط الشاشة |
| `-FullScreen` | SwitchParameter | — | — | Named | — | يرسل F11 إلى النافذة |
| `-PassThru` | SwitchParameter | — | — | Named | — | إرجاع مساعد النافذة لكل عملية |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | دائمًا في المقدمة |
| `-Random` | SwitchParameter | — | — | Named | — | تشغيل الملفات عشوائياً إلى الأبد |
| `-Loop` | SwitchParameter | — | — | Named | — | كرر الكل |
| `-Repeat` | SwitchParameter | — | — | Named | — | كرر العنصر الحالي |
| `-StartPaused` | SwitchParameter | — | — | Named | — | بدء الإيقاف المؤقت |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | تشغيل وخروج |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | تعطيل الصوت |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | تعطيل الترجمة |
| `-AutoScale` | SwitchParameter | — | — | Named | — | تحجيم الفيديو التلقائي |
| `-HighPriority` | SwitchParameter | — | — | Named | — | زيادة أولوية العملية |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | تمكين تمديد الوقت الصوتي |
| `-NewWindow` | SwitchParameter | — | — | Named | — | افتح مثيل جديد لمشغل الوسائط VLC |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | تمكين وضع خلفية الفيديو |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | تمكين تمديد الوقت الصوتي |
| `-Close` | SwitchParameter | — | — | Named | — | أغلق نافذة مشغل الوسائط VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | سيؤدي ذلك إما إلى ضبط النافذة على وضع ملء الشاشة على شاشة مختلفة عن Powershell، أو وضعها جنباً إلى جنب مع Powershell على نفس الشاشة |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | تركيز نافذة VLC بعد الفتح |
| `-SetForeground` | SwitchParameter | — | — | Named | — | تعيين نافذة VLC إلى المقدمة بعد الفتح |
| `-Maximize` | SwitchParameter | — | — | Named | — | قم بتكبير النافذة |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | استعادة تركيز نافذة PowerShell بعد فتح VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |

## Examples

### Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0 Opens a video file in fullscreen mode on the primary monitor for immersive viewing experience.

```powershell
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.
```

### vlc "video.mp4" -fs -m 0 Short form using aliases to open video fullscreen on monitor 0 with minimal typing required.

```powershell
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.
```

### Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English" Opens a movie with external subtitles and specific audio language for enhanced viewing with captions.

```powershell
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
```

## Parameter Details

### `-Path <String[]>`

> ملف (ملفات) الوسائط أو عنوان (عناوين) URL لفتحه في VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> العرض الأولي للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> الارتفاع الأولي للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> الموضع الأفقي الأولي للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> الموضع الأولي Y للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> اضغط على الأزرار لإرسالها إلى نافذة مشغل VLC، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> تجاهل أحرف التحكم والمعدلات عند إرسال المفاتيح إلى VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح إلى VLC

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

> التأخير بين سلاسل الإدخال المختلفة بالميلي ثانية عند إرسال المفاتيح إلى VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `50` |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> الاحتفاظ بتركيز لوحة المفاتيح على نافذة VLC بعد إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> الشاشة المراد استخدامها، 0 = افتراضي، -1 يعني تجاهل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> نسبة العرض إلى الارتفاع المصدر

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> اقتصاص الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> استخدم ملف الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> عامل تحجيم نص الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> لغة الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> لغة الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> لغة الصوت المفضلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> وكيل HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> كلمة مرور الوكيل HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> مستوى الإسهاب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> سلوك الدليل الفرعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> الإضافات المُتجاهلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> المسار إلى ملف VLC القابل للتنفيذ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> وضع إعادة تشغيل الكسب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> مقدمة كسب إعادة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> فرض اكتشاف دولبي سوراوند

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> مرشحات الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> التصورات الصوتية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> إزالة التشابك

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> وضع إزالة التشابك

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> وحدة تصفية الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> وحدات تصفية الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> الوحدات النمطية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> وحدات مرشح الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> وضع التصور الصوتي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> لغة الترجمات المصاحبة المفضلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> امتدادات الملفات المُتجاهلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> وسائط إضافية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Left`

> وضع النافذة على الجانب الأيسر من الشاشة

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

> وضع النافذة على الجانب الأيمن من الشاشة

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

> وضع النافذة على الجانب العلوي من الشاشة

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

> ضع النافذة على الجانب السفلي من الشاشة

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

> وضع النافذة في وسط الشاشة

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

> يرسل F11 إلى النافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> إرجاع مساعد النافذة لكل عملية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> دائمًا في المقدمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> تشغيل الملفات عشوائياً إلى الأبد

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> كرر الكل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> كرر العنصر الحالي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> بدء الإيقاف المؤقت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> تشغيل وخروج

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> تعطيل الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> تعطيل الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> تحجيم الفيديو التلقائي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> زيادة أولوية العملية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> تمكين تمديد الوقت الصوتي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> افتح مثيل جديد لمشغل الوسائط VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> تمكين وضع خلفية الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> تمكين تمديد الوقت الصوتي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> أغلق نافذة مشغل الوسائط VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> سيؤدي ذلك إما إلى ضبط النافذة على وضع ملء الشاشة على شاشة مختلفة عن Powershell، أو وضعها جنباً إلى جنب مع Powershell على نفس الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> تركيز نافذة VLC بعد الفتح

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

> تعيين نافذة VLC إلى المقدمة بعد الفتح

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

> قم بتكبير النافذة

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

> استعادة تركيز نافذة PowerShell بعد فتح VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
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
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-MediaFile.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerRepeat.md)
