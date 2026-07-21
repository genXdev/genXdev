# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> يسترد بيانات التعريف الخاصة بأمر GenXdev المحدد، مع إمكانية ترجمة نص المساعدة إلى لغة أخرى.

## Description

يستخرج ويعيد بيانات وصفية شاملة حول أمر GenXdev cmdlet بما في ذلك
ملخصه ووصفه ومعلماته وأمثلته ومعلومات مساعدة أخرى.
عند تحديد لغة مستهدفة عبر المعامل -Language، يمكن ترجمة نص المساعدة
باستخدام خدمات الترجمة المبنية على الذكاء الاصطناعي. يمكن تقديم تعليمات ترجمة
مخصصة لضبط ناتج الترجمة.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | اسم الأمر cmdlet لاسترداد البيانات الوصفية |
| `-Language` | String | — | — | 1 | — | BCP 47 علامة لغوية لترجمة نص المساعدة (مثل ar-SA، nl-NL، de-DE). اتركها فارغة لتخطي الترجمة. |
| `-TranslationInstructions` | String | — | — | 2 | — | تعليمات مخصصة لنموذج الترجمة بالذكاء الاصطناعي. تتجاوز تعليمات الترجمة الافتراضية الواعية ببيانات cmdlet. |
| `-Model` | String | — | — | 3 | — | معرف النموذج أو النمط المستخدم للترجمات بالذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | 4 | — | رابط نقطة نهاية API للترجمات بالذكاء الاصطناعي |
| `-ApiKey` | String | — | — | 5 | — | مفتاح API للترجمات المعتمدة بالذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | يشير إلى أن LLM لا يدعم مخططات JSON |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | تخطي الترجمة المستندة إلى LLM؛ احتفظ بنص التعليمات بلغة المصدر حتى عندما يتم تحديد -Language. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

يسترجع البيانات الوصفية لـ cmdlet 'Find-Item' في اللغة الافتراضية.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

يسترد بيانات تعريف الأمر Find-Item مع ترجمات بالهولندية.

## Parameter Details

### `-Name <String>`

> اسم الأمر cmdlet لاسترداد البيانات الوصفية

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> BCP 47 علامة لغوية لترجمة نص المساعدة (مثل ar-SA، nl-NL، de-DE). اتركها فارغة لتخطي الترجمة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> تعليمات مخصصة لنموذج الترجمة بالذكاء الاصطناعي. تتجاوز تعليمات الترجمة الافتراضية الواعية ببيانات cmdlet.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> معرف النموذج أو النمط المستخدم للترجمات بالذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> رابط نقطة نهاية API للترجمات بالذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> مفتاح API للترجمات المعتمدة بالذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> يشير إلى أن LLM لا يدعم مخططات JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> تخطي الترجمة المستندة إلى LLM؛ احتفظ بنص التعليمات بلغة المصدر حتى عندما يتم تحديد -Language.

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
