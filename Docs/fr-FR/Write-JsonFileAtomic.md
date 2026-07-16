# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Écrit un objet au format JSON dans un fichier de manière atomique pour empêcher la corruption.

## Description

* Écriture atomique : utilise une stratégie de fichier temporaire + renommage pour garantir que le fichier cible ne reste jamais dans un état corrompu si le processus est interrompu.
* Logique de nouvelle tentative : réessaie l'écriture jusqu'à MaxRetries fois avec un délai de RetryDelayMs millisecondes entre les tentatives.
* Prise en charge des objets : accepte tout objet, pas seulement Hashtable. Sérialise via System.Text.Json avec repli sur ConvertTo-Json pour les types .NET complexes qui ne peuvent pas être sérialisés nativement.
* Prise en charge du debounce : lorsque DebounceMs > 0, les écritures consécutives rapides dans le même fichier sont fusionnées — seul le dernier contenu est écrit une fois que le fichier n'a pas été touché pendant DebounceMs ms.
* Création de répertoires : crée automatiquement les répertoires parents s'ils n'existent pas.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier à écrire. |
| `-Data` | Object | — | — | 1 | — | L'objet à sérialiser en JSON et à écrire dans le fichier. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Le nombre maximal de tentatives de réessai pour l'opération d'écriture atomique. La valeur par défaut est 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Le délai en millisecondes entre les tentatives de reprise. La valeur par défaut est 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Si supérieur à 0, le debounce écrit dans ce fichier. La valeur par défaut est 0 (désactivé). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | La profondeur maximale pour la sérialisation JSON. Par défaut, 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Vous êtes un assistant utile conçu pour produire du JSON.
## Format de réponse

Répondez uniquement avec un objet JSON.

===== EXIGENCE DE SORTIE JSON CRITIQUE =====
Vous devez répondre UNIQUEMENT avec du json valide. AUCUN autre texte n'est autorisé.
N'incluez aucune explication, commentaire ou texte avant ou après le json.
Votre réponse doit être un json analysable qui se conforme EXACTEMENT à ce schéma :
{
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "schema": {
      "properties": {
        "response": {
          "description": "La sortie de texte transformée",
          "type": "string"
        }
      },
      "required": [
        "response"
      ],
      "type": "object"
    },
    "strict": true
  }
}

Exemple de format de réponse : {"response":"votre réponse réelle ici"}
===== FIN DE L'EXIGENCE ===== |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Vous êtes un assistant utile conçu pour produire du JSON.
## Format de réponse

Répondez uniquement avec un objet JSON. Aucun autre texte n'est autorisé.

===== EXIGENCE CRITIQUE DE SORTIE JSON =====
Vous DEVEZ répondre UNIQUEMENT avec du json valide. AUCUN autre texte n'est autorisé.
N'incluez AUCUNE explication, commentaire ou texte avant ou après le json.
Votre réponse doit être un json analysable qui correspond EXACTEMENT à ce schéma :
{
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "schema": {
      "properties": {
        "response": {
          "description": "Le texte transformé en sortie",
          "type": "string"
        }
      },
      "required": [
        "response"
      ],
      "type": "object"
    },
    "strict": true
  }
}

Exemple de format de réponse : {"response":"votre réponse réelle ici"}
===== FIN DE L'EXIGENCE ===== |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Fournit une option de sérialisation alternative qui convertit toutes les énumérations en leur représentation sous forme de chaîne de caractères. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Writes a Hashtable as indented JSON to config.json atomically.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Écrit atomiquement des objets de processus sous forme de JSON compressé.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
