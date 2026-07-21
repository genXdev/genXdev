# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Belirtilen bir GenXdev cmdlet'i için meta verileri alır, yardım metnini isteğe bağlı olarak başka bir dile çevirir.

## Description

Bir GenXdev cmdlet'inin kısa açıklaması, açıklaması, parametreleri, örnekleri ve diğer yardım bilgileri dahil olmak üzere kapsamlı meta verilerini çıkarır ve döndürür. -Language parametresi aracılığıyla bir hedef dil belirtildiğinde, yardım metni AI tabanlı çeviri hizmetleri kullanılarak çevrilebilir. Çeviri çıktısını ince ayar yapmak için özel çeviri talimatları sağlanabilir.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Meta verileri almak için cmdlet'in adı |
| `-Language` | String | — | — | 1 | — | Yardım metnini çevirmek için BCP 47 dil etiketi (ör. nl-NL, de-DE). Çeviriyi atlamak için boş bırakın. |
| `-TranslationInstructions` | String | — | — | 2 | — | Genel bakış: Get-ItemProperty, kayıt defteri anahtarlarının altındaki değerleri alır. Get-ItemProperty cmdlet'i, belirtilen kayıt defteri anahtarlarının altındaki değerleri alır. Bir kayıt defteri anahtarındaki tüm değerler alınabilir veya belirli değer adları belirtilebilir. Windows kayıt defterinde, tüm kayıt defteri anahtarlarında bir Default değeri bulunur. Her kayıt defteri anahtarı ayrıca sıfır veya daha fazla ek değer içerebilir. |
| `-Model` | String | — | — | 3 | — | AI çevirileri için kullanılacak model tanımlayıcı veya desen |
| `-ApiEndpoint` | String | — | — | 4 | — | Yapay zeka çevirileri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | 5 | — | Kimlik doğrulamalı AI çevirileri için API anahtarı |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | LLM'nin JSON şemaları için desteği olmadığını belirtir |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | @{response=Skip LLM-based translation; keep help text in the source language even when -Language is specified.} |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Varsayılan dildeki Find-Item cmdlet'i için meta verileri alır.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Find-Item cmdlet'inin Hollandaca çevirilerle meta verilerini alır.

## Parameter Details

### `-Name <String>`

> Meta verileri almak için cmdlet'in adı

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

> Yardım metnini çevirmek için BCP 47 dil etiketi (ör. nl-NL, de-DE). Çeviriyi atlamak için boş bırakın.

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

> Genel bakış: Get-ItemProperty, kayıt defteri anahtarlarının altındaki değerleri alır. Get-ItemProperty cmdlet'i, belirtilen kayıt defteri anahtarlarının altındaki değerleri alır. Bir kayıt defteri anahtarındaki tüm değerler alınabilir veya belirli değer adları belirtilebilir. Windows kayıt defterinde, tüm kayıt defteri anahtarlarında bir Default değeri bulunur. Her kayıt defteri anahtarı ayrıca sıfır veya daha fazla ek değer içerebilir.

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

> AI çevirileri için kullanılacak model tanımlayıcı veya desen

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

> Yapay zeka çevirileri için API uç noktası URL'si

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

> Kimlik doğrulamalı AI çevirileri için API anahtarı

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

> LLM'nin JSON şemaları için desteği olmadığını belirtir

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

> @{response=Skip LLM-based translation; keep help text in the source language even when -Language is specified.}

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureDefaultGenXdevRefactors.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-GenXdevCmdLetInIde.md)
