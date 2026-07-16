# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | De directorypaden die afbeeldingen bevatten om te verwerken |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verwerk afbeeldingen in de opgegeven map en alle submappen |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Eerdere mislukte updates van afbeeldingssleutelwoorden worden opnieuw geprobeerd |
| `-Language` | String | — | — | Named | — | De taal voor gegenereerde beschrijvingen en trefwoorden |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Het type LLM-query |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | De time-out voor AI-bewerkingen in seconden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
