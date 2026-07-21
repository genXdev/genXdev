# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet`

## Synopsis

> تعمل على تحسين توثيق وتنفيذ أوامر GenXdev cmdlet من خلال المساعدة بالذكاء الاصطناعي.

## Description

تعمل هذه الوظيفة على تحسين أوامر GenXdev cmdlets من خلال تحليل وتحسين أكوادها البرمجية عبر مطالبات الذكاء الاصطناعي. يمكنها دمج الأوامر cmdlets في وحدات، وتحديث التوثيق، والتحقق من التنفيذ السليم. تدعم الوظيفة قوالب مطالبات مخصصة ويمكنها فتح الملفات في Visual Studio Code أو Visual Studio.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | نمط البحث لتصفية أداة الأوامر (cmdlets) 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | أسماء وحدات GenXdev للبحث 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | مفتاح موجه الذكاء الاصطناعي المستخدم لاختيار القالب |
| `-Prompt` | String | — | — | 2 | `''` | نص موجه AI مخصص للاستخدام |
| `-NoLocal` | SwitchParameter | — | — | Named | — | تخطي إصدارات الوحدة المحلية |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | قم بتضمين الإصدارات المنشورة فقط |
| `-FromScripts` | SwitchParameter | — | — | Named | — | البحث في ملفات البرامج النصية |
| `-Code` | SwitchParameter | — | — | Named | — | فتح في فيجوال ستوديو كود |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | فتح في فيجوال ستوديو |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | .SYNOPSIS
ينشئ مهمة مجدولة جديدة.

.DESCRIPTION
يؤدي الأمر `New-ScheduledTask` إلى إنشاء مهمة مجدولة جديدة. يمكنك استخدام الأمر `Register-ScheduledTask` لتسجيل المهمة المجدولة الجديدة.

باستخدام الأمر `Export-ScheduledTask`، يمكنك تصدير مهمة حالية إلى ملف XML، ثم استخدام الأمر `Import-Clixml` لاستيراد الملف وإنشاء كائن `ScheduledTask` جديد يمكن تمريره إلى `Register-ScheduledTask`.

.PARAMETER Action
يحدد الإجراءات التي ينفذها جدول المهام عند التشغيل. يمكن أن يكون الإجراء هو تشغيل برنامج أو إرسال رسالة بريد إلكتروني أو عرض رسالة.
يمكن للإجراءات تحديد سلوكيات متعددة في حالة الحاجة إلى مخرجات متنوعة.

.PARAMETER Principal
يحدد الحساب الأمني الذي سيقوم بتشغيل المهمة. يمكنك تحديد مستخدم أو مجموعة مستخدمين يمكنهم تشغيل المهمة. يمكنك أيضًا تحديد النوع الذي يتحكم في كيفية التعامل مع المهمة من قبل جدول المهام.

.PARAMETER Description
يحدد وصفًا للمهمة.

.PARAMETER Settings
يحدد الإعدادات التي تحدد كيفية تشغيل جدول المهام للمهمة. تشمل الإعدادات معلمات مثل الطلب من المستخدم تشغيل المهمة، أو إنهاء مهمة لا تستجيب، أو فرض إعادة التشغيل في الوقت المحدد، وما إلى ذلك.

.PARAMETER Triggers
يحدد مصفوفة من الكائنات المشغلة التي تبدأ تشغيل المهمة. يمكن أن تكون المشغلات قائمة على الوقت أو الحدث.

.EXAMPLE
$Action = New-ScheduledTaskAction -Execute 'Taskmgr.exe'
$Trigger = New-ScheduledTaskTrigger -AtStartup
$Principal = New-ScheduledTaskPrincipal -UserId 'SYSTEM' -LogonType ServiceAccount -RunLevel Highest
$Settings = New-ScheduledTaskSettingsSet -RunOnlyIfNetworkAvailable -WakeToRun
$Task = New-ScheduledTask -Action $Action -Principal $Principal -Trigger $Trigger -Settings $Settings
Register-ScheduledTask -TaskName 'CreateExplorerShellUnsShortcut' -InputObject $Task

الأمر `New-ScheduledTask` ينشئ مهمة مجدولة بثلاثة إجراءات ومشغلين وأولوية محددة.

.INPUTS
لا يمكن استخدام الأنبوب مع هذا الأمر.

.OUTPUTS
إخراج هذا الأمر هو كائن Microsoft. مدیریت. Infrastructure. ScheduledTask. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | دمج الأمر cmdlet في الوحدة النمطية |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Parameter Details

### `-CmdletName <String>`

> نمط البحث لتصفية أداة الأوامر (cmdlets)

| Property | Value |
|:---|:---|
| **Required?** | No |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PromptKey <String>`

> مفتاح موجه الذكاء الاصطناعي المستخدم لاختيار القالب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'CheckAllRequirements'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> نص موجه AI مخصص للاستخدام

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLocal`

> تخطي إصدارات الوحدة المحلية

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

> قم بتضمين الإصدارات المنشورة فقط

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

> البحث في ملفات البرامج النصية

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

> فتح في فيجوال ستوديو كود

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
### `-EditPrompt`

> .SYNOPSIS
ينشئ مهمة مجدولة جديدة.

.DESCRIPTION
يؤدي الأمر `New-ScheduledTask` إلى إنشاء مهمة مجدولة جديدة. يمكنك استخدام الأمر `Register-ScheduledTask` لتسجيل المهمة المجدولة الجديدة.

باستخدام الأمر `Export-ScheduledTask`، يمكنك تصدير مهمة حالية إلى ملف XML، ثم استخدام الأمر `Import-Clixml` لاستيراد الملف وإنشاء كائن `ScheduledTask` جديد يمكن تمريره إلى `Register-ScheduledTask`.

.PARAMETER Action
يحدد الإجراءات التي ينفذها جدول المهام عند التشغيل. يمكن أن يكون الإجراء هو تشغيل برنامج أو إرسال رسالة بريد إلكتروني أو عرض رسالة.
يمكن للإجراءات تحديد سلوكيات متعددة في حالة الحاجة إلى مخرجات متنوعة.

.PARAMETER Principal
يحدد الحساب الأمني الذي سيقوم بتشغيل المهمة. يمكنك تحديد مستخدم أو مجموعة مستخدمين يمكنهم تشغيل المهمة. يمكنك أيضًا تحديد النوع الذي يتحكم في كيفية التعامل مع المهمة من قبل جدول المهام.

.PARAMETER Description
يحدد وصفًا للمهمة.

.PARAMETER Settings
يحدد الإعدادات التي تحدد كيفية تشغيل جدول المهام للمهمة. تشمل الإعدادات معلمات مثل الطلب من المستخدم تشغيل المهمة، أو إنهاء مهمة لا تستجيب، أو فرض إعادة التشغيل في الوقت المحدد، وما إلى ذلك.

.PARAMETER Triggers
يحدد مصفوفة من الكائنات المشغلة التي تبدأ تشغيل المهمة. يمكن أن تكون المشغلات قائمة على الوقت أو الحدث.

.EXAMPLE
$Action = New-ScheduledTaskAction -Execute 'Taskmgr.exe'
$Trigger = New-ScheduledTaskTrigger -AtStartup
$Principal = New-ScheduledTaskPrincipal -UserId 'SYSTEM' -LogonType ServiceAccount -RunLevel Highest
$Settings = New-ScheduledTaskSettingsSet -RunOnlyIfNetworkAvailable -WakeToRun
$Task = New-ScheduledTask -Action $Action -Principal $Principal -Trigger $Trigger -Settings $Settings
Register-ScheduledTask -TaskName 'CreateExplorerShellUnsShortcut' -InputObject $Task

الأمر `New-ScheduledTask` ينشئ مهمة مجدولة بثلاثة إجراءات ومشغلين وأولوية محددة.

.INPUTS
لا يمكن استخدام الأنبوب مع هذا الأمر.

.OUTPUTS
إخراج هذا الأمر هو كائن Microsoft. مدیریت. Infrastructure. ScheduledTask.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | PromptKey |

<hr/>
### `-Integrate`

> دمج الأمر cmdlet في الوحدة النمطية

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
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-GenXdevCmdLetInIde.md)
