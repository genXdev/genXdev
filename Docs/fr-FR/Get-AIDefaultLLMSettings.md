# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Obtient toutes les configurations de paramètres LLM par défaut disponibles pour les opérations d'IA dans GenXdev.AI.

## Description

Récupère l'ensemble complet des paramètres par défaut du Grand Modèle de Langue (LLM) configurés pour les opérations d'IA. Les résultats peuvent être filtrés par type de requête, identifiant de modèle, point de terminaison API ou clé API. Prend en charge la récupération basée sur la session et sur les préférences persistantes, avec des options pour effacer l'état de la session ou le contourner complètement pour lire directement à partir des préférences stockées.

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Le type de requête LLM pour obtenir les paramètres |
| `-Model` | String | — | — | Named | — | Filter configurations by model identifier or pattern |
| `-ApiEndpoint` | String | — | — | Named | — | Filtrer les configurations par URL de point de terminaison API |
| `-ApiKey` | String | — | — | Named | — | Filter les configurations par clé API |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Skip session settings and get from preferences or defaults only |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Récupère toutes les configurations par défaut disponibles pour le type de requête Codage.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
