# Show-GenXdevCmdLetInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `editcmdlet`, `cmdlet`

## Synopsis

> يفتح أمر GenXdev المحدد في Visual Studio Code.

## Description

تسترجع هذه الوظيفة ملف البرنامج النصي ورقم السطر لـ cmdlet GenXdev المحدد وتفتحه في Visual Studio Code. يمكنها فتح إما تنفيذ الوظيفة الرئيسية أو اختبارات الوحدة المرتبطة بها، بناءً على مفتاح التبديل UnitTests.

## Syntax

```powershell
Show-GenXdevCmdLetInIde -CmdletName <String> [[-ModuleName] <String[]>] [-ChangedirectoryOnly] [-Code] [-CoPilot] [-EditPrompt] [-FromScripts] [-KeysToSend <String[]>] [-NoLocal] [-OnlyPublished] [-Prompt <String>] [-Search] [-UnitTests] [-VisualStudio] [<CommonParameters>]

Show-GenXdevCmdLetInIde [[-BaseModuleName] <String>] [[-Synopsis] <String>] [[-Description] <String>] [[-CmdletAliases] <String[]>] [-New] [-PromptKey <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | — | 0 | — | نمط البحث لتصفية أداة الأوامر (cmdlets) 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | أسماء وحدات GenXdev للبحث 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | IDE لفتح الملف فيه |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | فتح في فيجوال ستوديو |
| `-UnitTests` | SwitchParameter | — | — | Named | — | عرض اختبارات الوحدة للدالة بدلاً من الدالة |
| `-KeysToSend` | String[] | — | — | Named | `@()` | المفاتيح المطلوب إرسالها |
| `-CoPilot` | SwitchParameter | — | — | Named | — | إضافة إلى جلسة التحرير في كوبايلوت |
| `-Search` | SwitchParameter | — | — | Named | — | ابحث عالميًا أيضًا عن الأمر cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | عند التحديد، يغير موقع PowerShell الحالي فقط
إلى دليل Cmdlet المعني |
| `-New` | SwitchParameter | — | — | Named | — | إنشاء أمر cmdlet جديد *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | وصف موجز لغرض الأمر cmdlet *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | وصف تفصيلي لوظيفة الأمر *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | دمج الأمر الجديد في وحدة GenXdev الحالية *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | اسم مستعار واحد أو أكثر للcmdlet. يقبل مصفوفة من السلاسل النصية. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | مفتاح موجه الذكاء الاصطناعي المستخدم لاختيار القالب *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | نص موجه ذكاء اصطناعي مخصص لاستخدامه في توليد cmdet |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | لقد ترجمت النص التالي إلى العربية (المملكة العربية السعودية). يجب أن تترجم جميع النصوص القابلة للقراءة البشرية. لا تعيد الإدخال كما هو. أعد فقط النص المترجم بدون أي شروحات أو أغلفة JSON أو مطالبات نظام.

قواعد الترجمة الهامة:
1. إذا كان الإدخال يحتوي على كود أو ترميز أو بيانات منظمة، احتفظ بجميع النحو والهيكل والعناصر التقنية مثل الكلمات الرئيسية للبرمجة والعلامات أو العناصر الخاصة بتنسيق البيانات.
2. قم فقط بترجمة الأجزاء النصية القابلة للقراءة البشرية مثل التعليقات وقيم السلاسل النصية والتوثيق والمحتوى باللغة الطبيعية.
3. حافظ على التنسيق الدقيق والمسافات البادئة وفواصل الأسطر.
4. لا تترجم أبدًا المعرفات أو أسماء الدوال أو المتغيرات أو الكلمات الرئيسية التقنية.
تعليمات المستخدم الإضافية:
لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص تعليمات الأمر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية). |

## Examples

### Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo" Opens the implementation of Get-GenXDevModuleInfo in VSCode.

```powershell
Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo"
Opens the implementation of Get-GenXDevModuleInfo in VSCode.
```

### editcmdlet Get-GenXDevModuleInfo -UnitTests Opens the unit tests for Get-GenXDevModuleInfo using the alias.

```powershell
editcmdlet Get-GenXDevModuleInfo -UnitTests
Opens the unit tests for Get-GenXDevModuleInfo using the alias.
```

## Parameter Details

### `-CmdletName <String>`

> نمط البحث لتصفية أداة الأوامر (cmdlets)

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ModuleName <String[]>`

> أسماء وحدات GenXdev للبحث

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> The `-NoLocal` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> The `-OnlyPublished` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> The `-FromScripts` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> IDE لفتح الملف فيه

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

> فتح في فيجوال ستوديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UnitTests`

> عرض اختبارات الوحدة للدالة بدلاً من الدالة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> المفاتيح المطلوب إرسالها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CoPilot`

> إضافة إلى جلسة التحرير في كوبايلوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Search`

> ابحث عالميًا أيضًا عن الأمر cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChangedirectoryOnly`

> عند التحديد، يغير موقع PowerShell الحالي فقط
إلى دليل Cmdlet المعني

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `cd` |
| **Accept wildcard characters?** | No |

<hr/>
### `-New`

> إنشاء أمر cmdlet جديد

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | New |

<hr/>
### `-Synopsis <String>`

> وصف موجز لغرض الأمر cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `"todo: A brief description of the cmdlet's purpose"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | New |

<hr/>
### `-Description <String>`

> وصف تفصيلي لوظيفة الأمر

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `'todo: [A detailed description of what the cmdlet does]'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | New |

<hr/>
### `-BaseModuleName <String>`

> دمج الأمر الجديد في وحدة GenXdev الحالية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | New |

<hr/>
### `-CmdletAliases <String[]>`

> اسم مستعار واحد أو أكثر للcmdlet. يقبل مصفوفة من السلاسل النصية.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | New |

<hr/>
### `-PromptKey <String>`

> مفتاح موجه الذكاء الاصطناعي المستخدم لاختيار القالب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | New |

<hr/>
### `-Prompt <String>`

> نص موجه ذكاء اصطناعي مخصص لاستخدامه في توليد cmdet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EditPrompt`

> لقد ترجمت النص التالي إلى العربية (المملكة العربية السعودية). يجب أن تترجم جميع النصوص القابلة للقراءة البشرية. لا تعيد الإدخال كما هو. أعد فقط النص المترجم بدون أي شروحات أو أغلفة JSON أو مطالبات نظام.

قواعد الترجمة الهامة:
1. إذا كان الإدخال يحتوي على كود أو ترميز أو بيانات منظمة، احتفظ بجميع النحو والهيكل والعناصر التقنية مثل الكلمات الرئيسية للبرمجة والعلامات أو العناصر الخاصة بتنسيق البيانات.
2. قم فقط بترجمة الأجزاء النصية القابلة للقراءة البشرية مثل التعليقات وقيم السلاسل النصية والتوثيق والمحتوى باللغة الطبيعية.
3. حافظ على التنسيق الدقيق والمسافات البادئة وفواصل الأسطر.
4. لا تترجم أبدًا المعرفات أو أسماء الدوال أو المتغيرات أو الكلمات الرئيسية التقنية.
تعليمات المستخدم الإضافية:
لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص تعليمات الأمر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية).

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Search-GenXdevCmdlet.md)
