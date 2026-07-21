# New-ModuleXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Génère des fichiers d'aide XML MAML pour n'importe quel module PowerShell.

## Description

Génère des fichiers d'aide XML MAML pour tout module PowerShell en extrayant les métadonnées de toutes les applets de commande d'un module à l'aide de Get-CmdletMetaData et en produisant à la fois ModuleName.dll-Help.xml (pour les applets de commande C#) et ModuleName-help.xml (pour

## Syntax

```powershell
New-ModuleXmlHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Le nom du module PowerShell pour lequel générer de l'aide |
| `-Language` | String | — | — | Named | `'en-US'` | Balise de langue BCP 47 pour l'aide générée (par exemple, fr-FR, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | Remplacer les fichiers d'aide XML existants sans demander confirmation |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | @{response=Skip LLM translation; keep help in source language} |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les traductions IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison API pour les traductions IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les traductions AI authentifiées |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indique que le LLM ne prend pas en charge les schémas JSON |
| `-LinkPrefix` | String | — | — | Named | — | Préfixe d'URL pour le lien Version en ligne dans chaque lien connexe de cmdlet (par exemple, https://github.com/genXdev/genXdev/blob/main/Docs/fr-FR/) |
| `-TranslationInstructions` | String | — | — | Named | — | Assurez-vous de terminer et d'appliquer la solution de surveillance avant de retirer l'objet de stratégie de groupe en direct. |

## Examples

### New-ModuleXmlHelp -ModuleName 'Pester'

```powershell
New-ModuleXmlHelp -ModuleName 'Pester'
```

Génère le fichier XML d'aide en anglais pour le module Pester dans en-US\.

### New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Génère du XML d'aide néerlandais pour GenXdev, en écrasant les fichiers existants.

### New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Affiche les fichiers qui seraient créés sans les écrire réellement.

### New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force
```

Génère un fichier d'aide XML en anglais avec des URL de version en ligne par cmdlet pointant vers la documentation Markdown GitHub. Get-Help <cmdlet> -Online ouvre le navigateur.

## Parameter Details

### `-ModuleName <String>`

> Le nom du module PowerShell pour lequel générer de l'aide

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

> Balise de langue BCP 47 pour l'aide générée (par exemple, fr-FR, nl-NL, de-DE)

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

> Remplacer les fichiers d'aide XML existants sans demander confirmation

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

> @{response=Skip LLM translation; keep help in source language}

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

> L'identifiant ou le modèle à utiliser pour les traductions IA

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

> L'URL du point de terminaison API pour les traductions IA

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

> La clé API pour les traductions AI authentifiées

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

> Indique que le LLM ne prend pas en charge les schémas JSON

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

> Préfixe d'URL pour le lien Version en ligne dans chaque lien connexe de cmdlet (par exemple, https://github.com/genXdev/genXdev/blob/main/Docs/fr-FR/)

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

> Assurez-vous de terminer et d'appliquer la solution de surveillance avant de retirer l'objet de stratégie de groupe en direct.

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

- `IO.FileInfo[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FREnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FREnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-ModuleMarkdownHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSearch-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRShow-GenXdevCmdLetInIde.md)
