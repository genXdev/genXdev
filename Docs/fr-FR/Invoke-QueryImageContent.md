# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Analyse le contenu des images en utilisant les capacités de vision IA

## Description

Traite des images à l'aide des capacités de vision par IA pour analyser le contenu et répondre aux questions sur l'image. La fonction prend en charge divers paramètres d'analyse, notamment le contrôle de la température pour la randomisation des réponses et les limites de jetons pour la longueur de la sortie.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | The query string for analyzing the image |
| `-ImagePath` | String | ✅ | — | 1 | — | Chemin vers le fichier image pour analyse |
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
| `-AudioTemperature` | Double | — | — | Named | — | Température pour la génération de la réponse audio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Température pour la génération de la réponse. |
| `-Language` | String | — | — | Named | — | La langue pour les descriptions et mots-clés générés |
| `-CpuThreads` | Int32 | — | — | Named | — | Nombre de threads CPU à utiliser. |
| `-SuppressRegex` | String | — | — | Named | — | Expression régulière pour supprimer la sortie. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Taille du contexte audio pour le traitement. |
| `-SilenceThreshold` | Double | — | — | Named | — | Seuil de silence pour le traitement audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Pénalité de longueur pour la génération de séquence. |
| `-EntropyThreshold` | Double | — | — | Named | — | Seuil d'entropie pour le filtrage de sortie. |
| `-LogProbThreshold` | Double | — | — | Named | — | Seuil de probabilité logarithmique pour le filtrage de la sortie. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Aucun seuil de parole pour la détection audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Si spécifié, ne prononcez pas la sortie. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Si spécifié, ne prononcez pas les pensées du modèle. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Si spécifié, désactive VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Si spécifié, utilisez la capture audio du bureau. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Si spécifié, désactive l'utilisation du contexte. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Si spécifié, utilisez la stratégie d'échantillonnage par faisceau. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Si spécifié, ne renvoie que les réponses. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Si spécifié, n'ajoutez pas de pensées à l'historique. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Here is the continued response based on the last conversation. Please provide the previous context for an accurate continuation. |
| `-Speak` | SwitchParameter | — | — | Named | — | The output is the result or product that is produced by a system, process, or activity. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Parlez les pensées du modèle. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <woltlab-core-date-time user="1" date="2023-10-05T14:30:00+00:00" /> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Si spécifié, ne parlez qu'une seule fois. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Disable session caching. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Longueur maximale de rappel pour les appels d'outils. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for ImageSharp package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir le drapeau persistant pour les paquets ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analyser une image avec des limites de température et de jetons spécifiques.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Analyse d'image simple utilisant un alias et des paramètres positionnels.

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)
