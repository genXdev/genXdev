# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> Capture les messages d'erreur provenant de divers flux et utilise un LLM pour suggérer des corrections.

## Description

Cette cmdlet capture les messages d'erreur de différents flux PowerShell (entrée pipeline, verbose, information, erreur et avertissement) et formule une invite structurée pour qu'un LLM analyse et suggère des correctifs. Elle exécute ensuite la requête LLM et renvoie la solution suggérée.

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | Le script à exécuter et analyser pour les erreurs |
| `-Temperature` | Double | — | — | Named | `-1` | Température pour l'aléatoire de la réponse (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Le type de requête LLM |
| `-Model` | String | — | — | Named | — | L'identifiant ou le modèle à utiliser pour les opérations d'IA |
| `-ApiEndpoint` | String | — | — | Named | — | L'URL du point de terminaison de l'API pour les opérations d'IA |
| `-ApiKey` | String | — | — | Named | — | La clé API pour les opérations IA authentifiées |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Le délai d'attente en secondes pour les opérations d'IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tableau des définitions de fonctions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Définition de commandes PowerShell à utiliser comme outils |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Traduisez le texte suivant en fr-FR. RÈGLES DE TRADUCTION IMPORTANTES :
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
| `-ContinueLast` | SwitchParameter | — | — | Named | — | # Présentation du Menu Hoverboard

## Vue d'ensemble
Le menu Hoverboard est une interface utilisateur développée avec React qui fournit une navigation interactive et réactive. Ce guide présente son architecture, son installation et son utilisation.

## Fonctionnalités
- Transitions animées entre les sections de menu
- Composants réutilisables pour la construction de menus
- Prise en charge du responsive design pour la navigation mobile et desktop
- Barre de navigation collante avec défilement fluide

## Installation
Pour utiliser le menu Hoverboard dans votre projet React :
```bash
npm install hoverboard-menu
```

## Utilisation
```jsx
import { Menu } from 'hoverboard-menu';

function App() {
  return (
    <Menu>
      <MenuItem href="#accueil">Accueil</MenuItem>
      <MenuItem href="#produits">Produits</MenuItem>
      <MenuItem href="#contact">Contact</MenuItem>
    </Menu>
  );
}
```

## Structure du projet
Le projet est structuré de manière à séparer les préoccupations :
- `src/` : Contient le composant principal Menu et la logique d'état
- `src/components/` : Composants réutilisables comme MenuItem
- `src/styles/` : Fichiers de style avec animations et transitions personnalisées

## API
### Props du Menu
- `children` : Éléments React à afficher dans le menu
- `className` : Classes CSS additionnelles
- `collapsed` (booléen) : État initial du menu pour les vues mobiles

### Props de MenuItem
- `href` : URL ou ancre de destination
- `label` : Texte affiché pour l'élément
- `icon` : Composant d'icône optionnel
- `onClick` : Gestionnaire d'événement de clic

## Personnalisation
Le menu peut être stylisé avec des variables CSS. Par exemple, pour changer la couleur de fond :
```css
:hoverboard-menu {
  --menu-background: #1a1a2e;
  --menu-text-color: #ffffff;
}
```

## Licence
Ce projet est sous licence MIT. |
| `-Speak` | SwitchParameter | — | — | Named | — | Activer la synthèse vocale pour les réponses de l'IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Activer la synthèse vocale pour les réponses de réflexion de l'IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Ne pas stocker la session dans le cache de session |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object | — | — | Named | — | Pièces jointes à inclure dans la requête LLM. |
| `-ImageDetail` | Object | — | — | Named | — | Niveau de détail d'image pour la requête LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | Durée de vie en secondes pour la requête LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": ["response"],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. |
| `-ChatOnce` | Object | — | — | Named | — | Run chat only once for the LLM query. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Maximum tool call back length for LLM query. |
| `-AudioTemperature` | Object | — | — | Named | — | Température pour la génération audio. |
| `-TemperatureResponse` | Object | — | — | Named | — | Température pour la génération de réponse. |
| `-Language` | Object | — | — | Named | — | Langue pour la requête LLM. |
| `-CpuThreads` | Object | — | — | Named | — | Nombre de threads CPU à utiliser. |
| `-SuppressRegex` | Object | — | — | Named | — | Expression régulière pour supprimer la sortie. |
| `-AudioContextSize` | Object | — | — | Named | — | Taille du contexte audio pour la requête LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Seuil de silence pour le traitement audio. |
| `-LengthPenalty` | Object | — | — | Named | — | Pénalité de longueur pour la sortie LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Seuil d'entropie pour la sortie du LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Seuil de probabilité logarithmique pour la sortie du LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Aucun seuil de parole pour le traitement audio. |
| `-DontSpeak` | Object | — | — | Named | — | Ne lisez pas la sortie audio. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Ne parlez pas des pensées du modèle. |
| `-NoVOX` | Object | — | — | Named | — | Disable VOX for audio output. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Utilisez la capture audio du bureau. |
| `-NoContext` | Object | — | — | Named | — | Ne pas utiliser le contexte pour la requête LLM. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Utilisez la stratégie d'échantillonnage par recherche en faisceau. |
| `-OnlyResponses` | Object | — | — | Named | — | Réponse de l'LLM uniquement. |

## Examples

### $errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {     My-ScriptThatFails }

```powershell
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}
```

Write-Host $errorInfo

### getfixprompt { Get-ChildItem -NotExistingParameter } ##############################################################################

```powershell
getfixprompt { Get-ChildItem -NotExistingParameter }
##############################################################################
```

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)
