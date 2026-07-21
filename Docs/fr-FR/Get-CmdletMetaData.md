# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les métadonnées pour une cmdlet GenXdev spécifiée, en traduisant éventuellement le texte d'aide dans une autre langue.

## Description

Extrait et retourne des métadonnées complètes sur une cmdlet GenXdev, y compris son synopsis, sa description, ses paramètres, ses exemples et d'autres informations d'aide. Lorsqu'une langue cible est spécifiée via le paramètre -Language, le texte d'aide peut être traduit à l'aide de services de traduction basés sur l'IA. Des instructions de traduction personnalisées peuvent être fournies pour affiner le résultat de la traduction.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Le nom de l'applet de commande pour récupérer les métadonnées |
| `-Language` | String | — | — | 1 | — | Balise linguistique BCP 47 pour la traduction du texte d'aide (par exemple, nl-NL, de-DE). Omettre pour ignorer la traduction. |
| `-TranslationInstructions` | String | — | — | 2 | — | Instructions personnalisées pour le modèle de traduction IA. Remplace les instructions de traduction par défaut tenant compte des métadonnées des cmdlets. |
| `-Model` | String | — | — | 3 | — | L'identifiant ou le modèle à utiliser pour les traductions IA |
| `-ApiEndpoint` | String | — | — | 4 | — | L'URL du point de terminaison API pour les traductions IA |
| `-ApiKey` | String | — | — | 5 | — | La clé API pour les traductions AI authentifiées |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | Indique que le LLM ne prend pas en charge les schémas JSON |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Ignorez la traduction par LLM ; conservez le texte d'aide dans la langue source même lorsque -Language est spécifié. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Récupère les métadonnées de l'applet de commande Find-Item dans la langue par défaut.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Récupère les métadonnées pour l'applet de commande Find-Item avec des traductions en néerlandais.

## Parameter Details

### `-Name <String>`

> Le nom de l'applet de commande pour récupérer les métadonnées

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

> Balise linguistique BCP 47 pour la traduction du texte d'aide (par exemple, nl-NL, de-DE). Omettre pour ignorer la traduction.

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

> Instructions personnalisées pour le modèle de traduction IA. Remplace les instructions de traduction par défaut tenant compte des métadonnées des cmdlets.

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

> L'identifiant ou le modèle à utiliser pour les traductions IA

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

> L'URL du point de terminaison API pour les traductions IA

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

> La clé API pour les traductions AI authentifiées

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

> Indique que le LLM ne prend pas en charge les schémas JSON

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

> Ignorez la traduction par LLM ; conservez le texte d'aide dans la langue source même lorsque -Language est spécifié.

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAssert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FREnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FREnsureDefaultGenXdevRefactors.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSearch-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRShow-GenXdevCmdLetInIde.md)
