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
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Les chemins de répertoire contenant les images à traiter |
| `-Recurse` | SwitchParameter | — | — | Named | — | Traiter les images dans le répertoire spécifié et tous les sous-répertoires |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Traiter uniquement les images qui n'ont pas encore de fichiers de métadonnées de visage |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Réessaier les mises à jour de mots-clés d'images qui ont échoué précédemment |
| `-Language` | String | — | — | Named | — | La langue pour les descriptions et mots-clés générés |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
