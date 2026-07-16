# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
