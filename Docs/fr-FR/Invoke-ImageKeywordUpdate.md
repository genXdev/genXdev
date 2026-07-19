# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> Met à jour les métadonnées des images avec des descriptions et mots-clés générés par IA.

## Description

La fonction Invoke-ImageKeywordUpdate analyse les images à l'aide de l'IA pour générer des descriptions, des mots-clés et d'autres métadonnées. Elle crée un fichier JSON compagnon pour chaque image contenant ces informations. La fonction peut traiter uniquement les nouvelles images ou mettre à jour les métadonnées existantes, et prend en charge l'analyse récursive des répertoires.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Les chemins de répertoire contenant les images à traiter |
| `-Recurse` | SwitchParameter | — | — | Named | — | Traiter les images dans le répertoire spécifié et tous les sous-répertoires |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Traiter uniquement les images qui n'ont pas encore de fichiers de métadonnées de visage |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Réessaier les mises à jour de mots-clés d'images qui ont échoué précédemment |
| `-Language` | String | — | — | Named | — | La langue pour les descriptions et mots-clés générés |
| `-FacesDirectory` | String | — | — | Named | — | Le répertoire contenant les images de visages organisées par dossier de personne. Si non spécifié, utilise le répertoire de visages configuré par défaut. |
| `-Instructions` | String | — | — | 2 | — | Instructions système pour le modèle |
| `-ResponseFormat` | String | — | — | Named | `$null` | Un schéma JSON pour le format de sortie demandé |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Niveau de détail de l'image |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Traduisez le texte suivant en fr-FR. RÈGLES DE TRADUCTION IMPORTANTES :
1. Analysez d'abord le format d'entrée - il peut s'agir de code, de balisage, de données structurées ou de texte brut.
2. Préservez toute la syntaxe, la structure et les éléments techniques comme les mots-clés de programmation, les balises ou les éléments spécifiques au format de données.
3. Traduisez uniquement les portions de texte lisibles par l'humain, comme les commentaires, les valeurs de chaîne, la documentation ou le contenu en langage naturel.
4. Maintenez exactement le formatage, l'indentation et les sauts de ligne.
5. Ne traduisez jamais les identifiants, noms de fonctions, variables ou mots-clés techniques.

Vous êtes un assistant utile conçu pour produire du JSON.
## Format de réponse

Répondez uniquement avec un objet JSON.

===== EXIGENCE CRITIQUE DE SORTIE JSON =====
Vous devez répondre UNIQUEMENT avec un JSON valide. Aucun autre texte n'est autorisé.
N'incluez aucune explication, commentaire ou texte avant ou après le JSON.
Votre réponse doit être un JSON analysable qui correspond EXACTEMENT à ce schéma :
{
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "Le texte transformé en sortie"
        }
      },
      "type": "object"
    }
  }
}

Exemple de format de réponse : {"response":"votre réponse réelle ici"}
===== FIN DE L'EXIGENCE ===== |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | Spécifie les fonctions à utiliser pour l'opération IA. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Spécifie les applets de commande exposés pour l'opération d'IA. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Spécifie les noms de fonctions d'outil qui ne nécessitent pas de confirmation. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Si spécifié, désactive l'utilisation du contexte. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longueur maximale de rappel pour les appels d'outils. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru pour retourner des objets structurés au lieu d'afficher dans la console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Détecte les changements dans le répertoire des visages et réenregistre les visages si nécessaire |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
