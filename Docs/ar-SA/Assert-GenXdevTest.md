# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests`

## Synopsis

> ينفذ اختبارات الوحدات لوحدات GenXdev النمطية أو الوحدات الفرعية أو أوامر cmdlets
مع تصحيح أخطاء ذكي وحل أخطاء مدعوم بالذكاء الاصطناعي.

## Description

توفر هذه الوظيفة إطار اختبار لوحدات GenXdev، مما يتيح تنفيذ الاختبارات على مستويات متعددة بدءًا من الوحدات الكاملة وصولاً إلى أوامر cmdlets الفردية. تدمج PSScriptAnalyzer لتحليل الشيفرة الثابتة، وPester لاختبار الوحدات، وPSScriptAnalyzer لتحليل الشيفرة الثابتة. تتضمن الوظيفة معالجة ذكية للأخطاء مع إمكانيات حل مدعومة بالذكاء الاصطناعي وتقارير تقدم مفصلة لسير العمل التطويري.

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | نمط البحث لتصفية أداة الأوامر (cmdlets) 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | الإجراء الذي يجب اتخاذه عند فشل الاختبار. الخيارات: اسأل، متابعة، إيقاف، حل باستخدام الذكاء الاصطناعي، كتابة خطأ، رمي استثناء |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | تعبير منتظم لمطابقة تعريفات cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | أسماء وحدات GenXdev للبحث 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | تخطي البحث في مسارات الوحدات المحلية |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | ابحث فقط في مسارات الوحدات المنشورة |
| `-FromScripts` | SwitchParameter | — | — | Named | — | البحث في ملفات البرامج النصية بدلاً من الوحدات النمطية |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | يشمل دليل البرامج النصية بالإضافة إلى الوحدات العادية *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | أسماء الوحدات الفريدة فقط |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | تتطلب تطابقات تامة لأسماء cmdlets |
| `-Verbosity` | String | — | — | Named | `'Normal'` | مستوى التفاصيل في الإخراج |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | مستوى تفاصيل تتبع الاستدعاء |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | كما يقوم بتحديد اختبارات الوحدة التي تستغرق وقتاً طويلاً في التشغيل |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | يتجاوز استيراد وحدات GenXdev قبل الاختبار *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | يتجاوز تشغيل اختبارات PSAnalyzer |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | تجاوز استدعاء اختبارات Pester |

## Examples

### Assert-GenXdevTest -ModuleName "GenXdev.AI" Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and Pester tests.

```powershell
Assert-GenXdevTest -ModuleName "GenXdev.AI"
Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and
Pester tests.
```

### Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `     -TestFailedAction SolveWithAI Tests the specified sub-module and uses AI to automatically resolve any failures encountered during testing.

```powershell
Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `
    -TestFailedAction SolveWithAI
Tests the specified sub-module and uses AI to automatically resolve any
failures encountered during testing.
```

### Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed Tests the specific cmdlet with detailed output showing all test operations and results.

```powershell
Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed
Tests the specific cmdlet with detailed output showing all test operations
and results.
```

### testcmdlet Assert-GenXdevTest Uses the alias to test the current cmdlet with default settings.

```powershell
testcmdlet Assert-GenXdevTest
Uses the alias to test the current cmdlet with default settings.
```

## Parameter Details

### `-CmdletName <String>`

> نمط البحث لتصفية أداة الأوامر (cmdlets)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-TestFailedAction <String>`

> الإجراء الذي يجب اتخاذه عند فشل الاختبار. الخيارات: اسأل، متابعة، إيقاف، حل باستخدام الذكاء الاصطناعي، كتابة خطأ، رمي استثناء

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'Continue'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefinitionMatches <String>`

> تعبير منتظم لمطابقة تعريفات cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> أسماء وحدات GenXdev للبحث

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> تخطي البحث في مسارات الوحدات المحلية

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

> ابحث فقط في مسارات الوحدات المنشورة

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

> البحث في ملفات البرامج النصية بدلاً من الوحدات النمطية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> يشمل دليل البرامج النصية بالإضافة إلى الوحدات العادية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> أسماء الوحدات الفريدة فقط

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> تتطلب تطابقات تامة لأسماء cmdlets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Verbosity <String>`

> مستوى التفاصيل في الإخراج

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Normal'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StackTraceVerbosity <String>`

> مستوى تفاصيل تتبع الاستدعاء

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'FirstLine'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowLongRunningTests`

> كما يقوم بتحديد اختبارات الوحدة التي تستغرق وقتاً طويلاً في التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipModuleImports`

> يتجاوز استيراد وحدات GenXdev قبل الاختبار

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-SkipPSAnalyzerTests`

> يتجاوز تشغيل اختبارات PSAnalyzer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipPesterTests`

> تجاوز استدعاء اختبارات Pester

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
