# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les paramètres du LLM pour les opérations d'IA dans GenXdev.AI.

## Description

Cette fonction récupère les paramètres LLM (Large Language Model) utilisés par le module GenXdev.AI pour diverses opérations d'IA. Les paramètres sont récupérés à partir des variables de session, des préférences persistantes ou du fichier de paramètres par défaut, dans cet ordre de priorité. La fonction prend en charge la sélection automatique de la configuration en fonction des ressources mémoire système disponibles.

La stratégie de sélection de la mémoire est déterminée automatiquement en fonction des paramètres Gpu et Cpu fournis :
- Si les paramètres Gpu et Cpu sont spécifiés : utilise la mémoire combinée CPU + GPU
- Si seul le paramètre Gpu est spécifié : préfère la mémoire GPU (avec repli sur la RAM système)
- Si seul le paramètre Cpu est spécifié : utilise uniquement la RAM système
- Si aucun paramètre n'est spécifié : utilise la mémoire combinée CPU + GPU (par défaut)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Le type de requête LLM pour obtenir les paramètres |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support json_schema response format |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support image upload functionality |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support tool calling functionality |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Skip session settings and get from preferences or defaults only |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Obtient les paramètres LLM pour le type de requête SimpleIntelligence (par défaut).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Obtient les paramètres LLM pour le type de requête Coding.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Récupère les paramètres LLM à partir des préférences ou des valeurs par défaut uniquement, en ignorant les paramètres de session.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
