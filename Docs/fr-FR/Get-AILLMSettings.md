# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
