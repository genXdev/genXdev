# GenerateMasonryLayoutHtml

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> ينشئ معرض HTML بتصميم متجاوب من نمط البناء الحجري من بيانات الصور.

## Description

يقوم بإنشاء معرض HTML تفاعلي مع تخطيط شبكي مستجيب لعرض الصور. تتضمن الميزات:
- تخطيط شبكي يتكيف مع حجم الشاشة
- تلميحات الصور التي تعرض الأوصاف والكلمات المفتاحية
- وظيفة نسخ مسار الصورة بالنقر
- تصميم نظيف وعصري مع تأثيرات التمرير

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | مصفوفة من كائنات الصور تحتوي على المسار والكلمات المفتاحية والوصف |
| `-FilePath` | String | — | — | 1 | `$null` | مسار الإخراج لملف HTML المُنشأ |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | عنوان المعرض |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | وصف المعرض |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | هل التحرير ممكّن |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | ما إذا كان الحذف ممكّنًا |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | قم بتضمين الصور كعناوين URL بيانات base64 بدلاً من عناوين URL لملفات file:// لتحسين قابلية النقل |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | عرض الصور فقط في مستطيل دائري الزوايا، بدون نص أدناه. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | التمرير التلقائي للصفحة بهذا العدد من البكسل في الثانية (فارغ لتعطيل) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | تحريك المستطيلات (الكائنات/الوجوه) في النطاق المرئي، مع التكرار كل 300 مللي ثانية |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | فرض تخطيط عمود واحد (مركز، عرض 1/3 الشاشة) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | بادئة يُسبق بها كل مسار صورة (مثل عناوين URL عن بعد) |
| `-PageSize` | Int32 | — | — | Named | `20` | عدد الصور التي يتم تحميلها لكل صفحة (للتحميل الديناميكي) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | الحد الأقصى لعدد الصور التي سيتم تحميلها للوضع الطباعي |
| `-RootMargin` | String | — | — | Named | `'1200px'` | rootMargin الخاص بـ IntersectionObserver لتشغيل التمرير اللانهائي (على سبيل المثال "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | عتبة IntersectionObserver لمشغل التمرير اللانهائي |

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

> مصفوفة من كائنات الصور تحتوي على المسار والكلمات المفتاحية والوصف

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

> مسار الإخراج لملف HTML المُنشأ

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

> عنوان المعرض

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

> وصف المعرض

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

> هل التحرير ممكّن

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

> ما إذا كان الحذف ممكّنًا

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

> قم بتضمين الصور كعناوين URL بيانات base64 بدلاً من عناوين URL لملفات file:// لتحسين قابلية النقل

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

> عرض الصور فقط في مستطيل دائري الزوايا، بدون نص أدناه.

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

> التمرير التلقائي للصفحة بهذا العدد من البكسل في الثانية (فارغ لتعطيل)

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

> تحريك المستطيلات (الكائنات/الوجوه) في النطاق المرئي، مع التكرار كل 300 مللي ثانية

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

> فرض تخطيط عمود واحد (مركز، عرض 1/3 الشاشة)

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

> بادئة يُسبق بها كل مسار صورة (مثل عناوين URL عن بعد)

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

> عدد الصور التي يتم تحميلها لكل صفحة (للتحميل الديناميكي)

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

> الحد الأقصى لعدد الصور التي سيتم تحميلها للوضع الطباعي

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

> rootMargin الخاص بـ IntersectionObserver لتشغيل التمرير اللانهائي (على سبيل المثال "1200px")

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

> عتبة IntersectionObserver لمشغل التمرير اللانهائي

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureNuGetAssembly.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/WriteFileOutput.md)
