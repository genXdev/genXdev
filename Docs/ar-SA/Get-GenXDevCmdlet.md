# Get-GenXDevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `gcmds`

## Synopsis

> يسترد ويسرد جميع أوامر GenXdev وتفاصيلها.

## Description

يبحث من خلال وحدات GenXdev المثبتة وملفات السكربت للعثور على أوامر cmdlets،
وأسماءها المستعارة، وأوصافها. يمكن التصفية حسب نمط الاسم واسم الوحدة.
يدعم التصفية حسب تعريفات cmdlet ويوفر خيارات بحث مرنة
عبر مسارات الوحدات المحلية والمنشورة.

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | نمط البحث لتصفية أداة الأوامر (cmdlets) 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | تعبير منتظم لمطابقة تعريفات cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | أسماء وحدات GenXdev للبحث 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | تخطي البحث في مسارات الوحدات المحلية |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | ابحث فقط في مسارات الوحدات المنشورة |
| `-FromScripts` | SwitchParameter | — | — | Named | — | البحث في ملفات البرامج النصية بدلاً من الوحدات النمطية |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | يشمل دليل البرامج النصية بالإضافة إلى الوحدات العادية *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | أسماء الوحدات الفريدة فقط |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | إجراء تطابق تام بدلاً من تطابق أحرف البدل |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Parameter Details

### `-CmdletName <String[]>`

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
### `-DefinitionMatches <String>`

> تعبير منتظم لمطابقة تعريفات cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
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

> إجراء تطابق تام بدلاً من تطابق أحرف البدل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-GenXdevCmdlet.md)
