# New-ModuleMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Herhangi bir PowerShell modülü için zengin Markdown yardım dosyaları oluşturur.

## Description

Herhangi bir PowerShell modülü için kapsamlı bir Markdown yardım sitesi oluşturur:
her cmdlet için tüm meta veri bölümleriyle birlikte bir .md dosyası ve her alt modül tablosunun her cmdlet dosyasına bağlantı verdiği bir README.md dizini.

Alt modül keşfi taşınabilirdir: script cmdlet'leri için .psm1 dot-source dizinleri, derlenmiş cmdlet'ler için .NET ad alanları, alt modül yapısı olmayan modüller için katmanlı bir geri dönüş zinciri ile.

## Syntax

```powershell
New-ModuleMarkdownHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Yardım oluşturulacak PowerShell modülünün adı |
| `-OutputPath` | String | — | — | Named | — | .md dosyaları için özel çıktı dizini. Varsayılan olarak <moduleRoot>\Docs\<dili>. |
| `-Language` | String | — | — | Named | `'en-US'` | Oluşturulan yardım için BCP 47 dil etiketi (örn. en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | Mevcut .md dosyalarının üzerine sormadan yaz |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Keep help in source language |
| `-Model` | String | — | — | Named | — | AI çevirileri için kullanılacak model tanımlayıcı veya desen |
| `-ApiEndpoint` | String | — | — | Named | — | Yapay zeka çevirileri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | Named | — | Kimlik doğrulamalı AI çevirileri için API anahtarı |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM'nin JSON şemaları için desteği olmadığını belirtir |
| `-LinkPrefix` | String | — | — | Named | — | README indeks bağlantıları için URL öneki (örneğin, https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | .DESCRIPTION
Görevi siler.

Görev, iptal edilmiş bir görev olsa bile silinir. Silinen bir görevle ilişkili tüm alt zamanlayıcılar da silinir. |

## Examples

### New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Her Pester cmdlet'i için bir .md + README.md dizini içeren Docs\ klasörünü oluşturur.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Hollandaca çevrilmiş markdown yardımını oluşturur, mevcut dosyaların üzerine yazar.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

README indeksinde mutlak GitHub bağlantıları ile yardım oluşturur.

## Parameter Details

### `-ModuleName <String>`

> Yardım oluşturulacak PowerShell modülünün adı

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> .md dosyaları için özel çıktı dizini. Varsayılan olarak <moduleRoot>\Docs\<dili>.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Oluşturulan yardım için BCP 47 dil etiketi (örn. en-US, nl-NL, de-DE)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'en-US'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Mevcut .md dosyalarının üzerine sormadan yaz

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> Keep help in source language

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LinkPrefix <String>`

> README indeks bağlantıları için URL öneki (örneğin, https://github.com/org/repo/Docs/)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> .DESCRIPTION
Görevi siler.

Görev, iptal edilmiş bir görev olsa bile silinir. Silinen bir görevle ilişkili tüm alt zamanlayıcılar da silinir.

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

- `String[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-GenXdevCmdLetInIde.md)
