# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> Met à jour les métadonnées de détection d'objets pour les fichiers image dans un répertoire spécifié.

## Description

Cette fonction traite les images d'un répertoire spécifié pour détecter des objets à l'aide de l'intelligence artificielle. Elle crée des fichiers de métadonnées JSON contenant les objets détectés, leurs positions, les scores de confiance et les étiquettes. La fonction prend en charge le traitement par lots avec des seuils de confiance configurables et peut éventuellement ignorer les fichiers de métadonnées existants ou retenter les détections précédemment échouées.

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

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

Cet exemple traite toutes les images dans C:\Photos et D:\Pictures ainsi que tous les sous-répertoires en utilisant les paramètres par défaut avec un seuil de confiance de 0,5.

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

Cet exemple traite uniquement les nouvelles images et réessaie celles ayant échoué précédemment dans plusieurs répertoires en utilisant la syntaxe des paramètres positionnels.

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

Cet exemple utilise l'accélération GPU avec un seuil de confiance plus élevé de 0,7 pour des détections d'objets plus précises mais moins nombreuses.

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
