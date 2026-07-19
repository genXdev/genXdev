# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Définit les paramètres LLM pour les opérations AI dans GenXdev.AI.

## Description

Ce paramètre [int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indique si le point de terminaison ne prend pas en charge le format de réponse json_schema'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indique si le point de terminaison ne prend pas en charge la fonctionnalité de téléchargement d\'images'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Indique si le point de terminaison ne prend pas en charge la fonctionnalité d\'appel d\'outils'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Stocke les paramètres uniquement dans la session en cours sans ' +
                'persistance')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Efface les paramètres alternatifs stockés dans la session pour les ' +
                'préférences IA')
        )]
        [switch] $ClearSession, stocke les paramètres du LLM (Large Language Model) utilisés par le
module GenXdev.AI pour diverses opérations d'IA. Les paramètres peuvent être stockés de manière persistante
dans les préférences (par défaut), uniquement dans la session en cours (en utilisant -SessionOnly), ou
supprimés de la session (en utilisant -ClearSession). La fonction valide qu'au moins
un paramètre de paramètre est fourni, sauf lors de l'effacement des paramètres de session.

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | Le type de requête LLM |
| `-Model` | String | — | — | 1 | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | 7 | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | 8 | — | La clé API pour les opérations IA authentifiées |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support json_schema response format |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support image upload functionality |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support tool calling functionality |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

Définit de manière persistante les paramètres LLM pour le type de requête Coding dans les préférences.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

Définit les paramètres LLM pour SimpleIntelligence uniquement pour la session en cours.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Réinitialise les paramètres LLM de session pour le type de requête Pictures sans affecter les préférences persistantes.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

Définit les paramètres LLM pour le type de requête Coding en utilisant des paramètres positionnels.
##############################################################################

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
